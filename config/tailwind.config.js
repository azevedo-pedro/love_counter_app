const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  darkMode: 'class',
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      colors: {
        gothic: {
          background: "#121212",
          accent: "#4B0082",
          secondary: "#2F2F2F",
          text: "#D1D5DB",
        },
      },
      fontFamily: {
        gothic: ['"EB Garamond"', 'serif'],
      },
    },
  },
  plugins: [
    // require('@tailwindcss/forms'),
    // require('@tailwindcss/typography'),
    // require('@tailwindcss/container-queries'),
  ]
}
