#!/usr/bin/env node

/**
 * PDF Generator för uppgifter
 * 
 * Använder Puppeteer för att konvertera Astro-sidor till PDF
 * 
 * Installation:
 * npm install puppeteer
 * 
 * Användning:
 * node scripts/generate-pdf.js <url> <output-path>
 * 
 * Exempel:
 * node scripts/generate-pdf.js http://localhost:4321/uppgifter/stamtradsanalys uppgifter/stamtradsanalys.pdf
 */

import puppeteer from 'puppeteer';
import { fileURLToPath } from 'url';
import { dirname, resolve } from 'path';

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

async function generatePDF(url, outputPath) {
  console.log(`🚀 Startar PDF-generering...`);
  console.log(`📄 URL: ${url}`);
  console.log(`💾 Output: ${outputPath}`);

  const browser = await puppeteer.launch({
    headless: 'new',
    args: ['--no-sandbox', '--disable-setuid-sandbox']
  });

  try {
    const page = await browser.newPage();
    
    // Vänta på att sidan laddas
    console.log('⏳ Laddar sida...');
    await page.goto(url, {
      waitUntil: 'networkidle2',
      timeout: 30000
    });

    // Vänta lite extra för att säkerställa att allt är renderat
    await page.waitForTimeout(1000);

    // Generera PDF
    console.log('📝 Genererar PDF...');
    await page.pdf({
      path: resolve(outputPath),
      format: 'A4',
      margin: {
        top: '20mm',
        right: '20mm',
        bottom: '20mm',
        left: '20mm'
      },
      printBackground: true,
      preferCSSPageSize: false
    });

    console.log('✅ PDF genererad!');
    console.log(`📍 Sparad som: ${resolve(outputPath)}`);

  } catch (error) {
    console.error('❌ Fel vid PDF-generering:', error);
    process.exit(1);
  } finally {
    await browser.close();
  }
}

// Hämta argument
const args = process.argv.slice(2);

if (args.length < 2) {
  console.error('❌ Användning: node generate-pdf.js <url> <output-path>');
  console.error('Exempel: node generate-pdf.js http://localhost:4321/uppgifter/stamtradsanalys uppgifter/stamtradsanalys.pdf');
  process.exit(1);
}

const [url, outputPath] = args;

generatePDF(url, outputPath);
