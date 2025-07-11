# Islands of Personality – Memory Showcase Website

[![HTML5](https://img.shields.io/badge/HTML5-E34F26?logo=html5&logoColor=white)](https://developer.mozilla.org/en-US/docs/Web/HTML)
[![CSS3](https://img.shields.io/badge/CSS3-1572B6?logo=css3&logoColor=white)](https://developer.mozilla.org/en-US/docs/Web/CSS)
[![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?logo=javascript&logoColor=black)](https://developer.mozilla.org/en-US/docs/Web/JavaScript)
[![PHP](https://img.shields.io/badge/PHP-777BB4?logo=php&logoColor=white)](https://www.php.net/)
[![MySQL](https://img.shields.io/badge/MySQL-4479A1?logo=mysql&logoColor=white)](https://www.mysql.com/)
[![Bootstrap](https://img.shields.io/badge/Bootstrap-7952B3?logo=bootstrap&logoColor=white)](https://getbootstrap.com/)
[![Font Awesome](https://img.shields.io/badge/Font%20Awesome-339AF0?logo=fontawesome&logoColor=white)](https://fontawesome.com/)
[![AOS](https://img.shields.io/badge/AOS.js-29A586?logo=javascript&logoColor=white)](https://michalsnik.github.io/aos/)

---

## Description

A dynamic PHP-MySQL web application inspired by Pixar's *Inside Out*, where users can explore various “Islands of Personality” representing core memories and personal experiences — including Family, Friendship, Relationship, and Memory.

---

## 🔗 Live Preview

**[Experience the Demo](https://binibiningjenna.github.io/core-memory/)**  
> Note: Full functionality is best viewed using a local server (XAMPP, WAMP, etc.) due to PHP and MySQL requirements.

---

## 🛠 Tech Stack

| Technology     | Description                        |
|----------------|------------------------------------|
| HTML5          | Page structure                     |
| CSS3 / W3.CSS  | Styling and layout                 |
| JavaScript     | Frontend interactivity             |
| PHP            | Backend scripting                  |
| MySQL          | Data storage and retrieval         |
| Bootstrap 5    | Responsive grid system             |
| Font Awesome   | Icons                              |
| AOS.js         | Scroll animations                  |

---

## Features

- Explore themed personality islands dynamically rendered from the database
- Each island has a unique color scheme, icon, and identity
- Hero section includes an autoplaying, full-width embedded YouTube video
- Long-form and short-form descriptions fetched from the database
- Interactive image gallery showcasing memory visuals
- View detailed content and associated media for each island
- Fully responsive layout across mobile, tablet, and desktop devices

## File Structure
```
islandsofpersonality/
│
├── assets/
│ ├── images/ # Island and content images
│ ├── styles/ # CSS files
│ └── shared/ # Reusable PHP includes
│ ├── connect.php # Database connection
│ ├── head.php # <head> template
│ └── script.php # JS/CDN scripts
│
├── index.php # Homepage with video and island overview
├── view.php # Individual island memory content
└── README.md
```
