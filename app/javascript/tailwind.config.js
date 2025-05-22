module.exports = {
    content: [
      "./app/**/*.{html,erb,rb}",
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
    }
    },
    plugins: [],
  }
  