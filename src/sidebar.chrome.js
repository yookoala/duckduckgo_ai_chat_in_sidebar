document.getElementById('open-in-new-tab').addEventListener('click', () => {
  chrome.tabs.create({ url: 'https://your-target-website.com' });
});
