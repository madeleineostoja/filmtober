import App from './App.svelte';

var app = new App({
  target: document.body
});

export default app;

// Hot Module Replacement (HMR)
if ((import.meta as any).hot) {
  (import.meta as any).hot.accept();
  (import.meta as any).hot.dispose(() => {
    app.$destroy();
  });
}
