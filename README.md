<!DOCTYPE html>
<html lang="en">

<body>

  <h1>🌤️ Weather App</h1>

  <p>A simple and lightweight Flutter app that displays the <strong>maximum</strong>, <strong>minimum</strong>, and <strong>average</strong> temperatures for a selected city using real-time weather data from the <a href="https://openweathermap.org/api" target="_blank">OpenWeatherMap API</a>.</p>

  <div class="section">
    <h2>📱 Features</h2>
    <ul>
      <li>Get <strong>current temperature info</strong> for any city</li>
      <li>Displays:
        <ul>
          <li>🌡️ Maximum temperature</li>
          <li>🌡️ Minimum temperature</li>
          <li>🌡️ Average temperature</li>
        </ul>
      </li>
      <li>Clean and responsive UI</li>
      <li>Fast API calls with error handling</li>
    </ul>
  </div>

  <div class="section">
    <h2>🛠️ Built With</h2>
    <ul>
      <li><strong>Flutter</strong> – Cross-platform development</li>
      <li><strong>Dart</strong> – Programming language</li>
      <li><strong>Dio</strong> – HTTP client for API requests</li>
      <li><strong>OpenWeatherMap API</strong> – Weather data provider</li>
      <li><strong>Material Design</strong> – UI styling</li>
    </ul>
  </div>

  <div class="section">
    <h2>🚀 Getting Started</h2>

    <p><strong>1. Clone the repository:</strong></p>
    <pre><code>git clone https://github.com/your-username/weather-app.git
cd weather-app</code></pre>

    <p><strong>2. Install dependencies:</strong></p>
    <pre><code>flutter pub get</code></pre>

    <p><strong>3. Add your API key:</strong></p>
    <p>Open the file where you added the API request (e.g., <code>weather_service.dart</code>) and replace:</p>
    <pre><code>const String apiKey = 'YOUR_API_KEY';</code></pre>
    <p>with your key from <a href="https://openweathermap.org/api" target="_blank">OpenWeatherMap</a>.</p>
  </div>

  <div class="section">
    <h2>💡 Author</h2>
    <p>Developed by <strong>Nadia Kamel</strong><br>
    Feel free to connect or contribute!</p>
  </div>

</body>
</html>
