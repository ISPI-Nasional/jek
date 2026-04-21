---
title: "{{ $('⚙️ Parse Response AI').item.json.ai_judul }}"
date: {{ $now.toISO() }}
categories: [{{ $('⚙️ Parse Response AI').item.json.ai_kategori }}]
tags: [{{ $('⚙️ Parse Response AI').item.json.ai_tags_raw }}]
image:
  path: {{ $('⚙️ Parse Response AI').item.json.image_url }}
---

{{ $('⚙️ Parse Response AI').item.json.ai_isi }}
