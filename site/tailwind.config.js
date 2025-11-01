const colors = require('tailwindcss/colors')
const { spacing } = require('tailwindcss/defaultTheme')

module.exports = {
  content: ['.eleventy.js', 'src/**/*.{njk,md,html,js}'],
  mode: 'jit',
  darkMode: 'class',
  theme: {
    extend: {
      colors: {
        neutral: colors.neutral,
        brand: {
          50:  '#f4f4fb',
          100: '#e7e6f5',
          200: '#cfcdea',
          300: '#b1aedc',
          400: '#8d88c8',
          500: '#6f6bae', // main color
          600: '#5c5897',
          700: '#4b477c',
          800: '#3d3a63',
          900: '#343351',
        },
      },
      container: {
        center: true,
        padding: spacing[4],
        screens: {
          sm: '100%',
          md: '1024px',
          lg: '1200px',
          xl: false,
        },
      },
      typography: (theme) => ({
        DEFAULT: {
          css: {
            'h1, h2': { color: theme('colors.brand.900') },
            'h3,h4,h5,h6': { color: theme('colors.gray.700') },
            pre: {
              color: theme('colors.gray.500'),
              backgroundColor: theme('colors.gray.100'),
            },
          },
        },
        dark: {
          css: [
            {
              color: theme('colors.gray.300'),
              a: {
                color: theme('colors.gray.200'),
              },
              strong: {
                color: theme('colors.gray.200'),
              },
              'ol > li::before': {
                color: theme('colors.gray.400'),
              },
              'ul > li::before': {
                backgroundColor: theme('colors.gray.600'),
              },
              hr: {
                borderColor: theme('colors.gray.300'),
              },
              blockquote: {
                color: theme('colors.gray.300'),
                borderLeftColor: theme('colors.gray.600'),
              },
              h1: { color: theme('colors.gray.200') },
              h2: { color: theme('colors.gray.200') },
              h3: { color: theme('colors.gray.200') },
              h4: { color: theme('colors.gray.200') },
              'figure figcaption': {
                color: theme('colors.gray.400'),
              },
              code: { color: theme('colors.gray.200') },
              'a code': { color: theme('colors.gray.200') },
              pre: { backgroundColor: theme('colors.gray.800') },
              thead: {
                color: theme('colors.gray.200'),
                borderBottomColor: theme('colors.gray.400'),
              },
              'tbody tr': {
                borderBottomColor: theme('colors.gray.600'),
              },
              hr: { borderColor: theme('colors.gray.500') },
            },
          ],
        },
      }),
    },
  },
  variants: {},
  plugins: [require('@tailwindcss/typography')],
}
