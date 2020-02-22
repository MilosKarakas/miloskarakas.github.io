'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "/assets/AssetManifest.json": "681535a54f18256c740195ee12d66d60",
"/assets/FontManifest.json": "d1c1af11f3005694b8d589ec8b479cc3",
"/assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"/assets/lib/etrafika.png": "458a4fa063cb93bc73e0b440a9cdbd20",
"/assets/lib/ludiPopust.png": "fede812ad4f9cd7d25b5051054d6bb49",
"/assets/LICENSE": "ed417f65003ec3820921b2f6d1244253",
"/assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"/assets/packages/grafpix/lib/fonts/captainicon.ttf": "1d31a28cd5c4a89c81173b554ccd6a96",
"/assets/packages/grafpix/lib/fonts/fa_brands.ttf": "273dc9bf9778fd37fa61357645d46a28",
"/assets/packages/grafpix/lib/fonts/fa_solid.ttf": "2aa6edf8f296a43b32df35f330b7c81c",
"/assets/packages/grafpix/lib/fonts/grafpix.ttf": "10d143dccb30a3d06c597706d0124437",
"/assets/packages/grafpix/lib/fonts/typicons.ttf": "29f9630f7d87a79830d1c321e1600f2e",
"/index.html": "893844cb0fbad6b23b2ec88c7565b90b",
"/main.dart.js": "997df10c8ddb50c5a9828b0268ee4fbc"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
