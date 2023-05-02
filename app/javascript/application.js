// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"

class Bridge {

  // Sends a message to the native app, if active.
  static postMessage(name, data = {}) {
    // iOS
    window.webkit?.messageHandlers?.nativeApp?.postMessage({name, ...data})

    // Android
    window.nativeApp?.postMessage(JSON.stringify({name, ...data}))
  }

  static importingContacts(name) {
    fetch('/contacts.json', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        "Accept": "application/json",
      },
      body: JSON.stringify({contact: { name } })
    }).then((response) => response.json())
      .then((data) => {
        console.log("Success:", data);
        var btn = document.querySelector('button')
        btn.textContent = `"Imported ${name}"`
      })
      .catch((error) => {
        console.error("Error:", error);
      });
  }
}

// Expose this on the window object so TurboNative can interact with it
window.Bridge = Bridge
export default Bridge
