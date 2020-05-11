module.exports = {
  defaultBrowser: "Firefox",
  handlers: [
   {
     match: finicky.matchHostnames(["trello.com", "ift.tt"]),
     browser: "Google Chrome"
   },
   {
     match: /redhat/,
     browser: "Google Chrome"
   }
  ]
};
