---
layout: projectPageNew
title: Feelings Zone
skipFixedLayout: true
paragraphs:
 - text: |
     In late 2018 I decided to change my programming career in the tech world for one in the arts. I soon learned that working as an artist involves writing countless proposals – for grants, residencies, shows, and so on. I am keeping track of all my art related applications in a <a href=https://docs.google.com/spreadsheets/d/1vgzPezp5SAYhaQM9Us-pO0T6QZEGAuLLWbd34Wgz_CA/edit?usp=sharing" target="_blank">Google Sheet</a>, which is publicly shared below. <br/><br/>
     The groups, organizations and institutions reviewing these submissions are rarely transparent about their processes, and almost never give reasons for their decisions. I'm making my list public because I believe there should be more institutional – and in equal parts individual – transparency around this topic.<br/><br/>
     Find the application list below ↴
---
<div class="new-projects-container feelings-table">
  <div class="project-row header feelings-header">
    <div class="project-column feelings-event border margin"><p>Application</p></div>
    <div class="project-column feelings-type border margin"><p>Type</p></div>
    <div class="project-column feelings-work border margin"><p>Submitted Work</p></div>
    <div class="project-column feelings-due border margin"><p>Date Due</p></div>
    <div class="project-column feelings-status border margin"><p>Status</p></div>
    <div class="project-column feelings-location border margin"><p>Date &amp; Location</p></div>
    <div class="project-column feelings-connection"><p>Personal Connection</p></div>
  </div>
  <div id="feelings-rows"></div>
  <div id="feelings-loading">
    <div class="feelings-spinner"></div>
    <p>Loading…</p>
  </div>
  <p id="feelings-error" style="display: none;">
    Couldn't load the table right now. You can view it directly on
    <a href="https://docs.google.com/spreadsheets/d/e/2PACX-1vSQMbXg1PCRH2WUdzTwGlFmi2Jz32fshL7fbE0ivkcGqKbU03eVfEI_DNHGKhThbT8YB7lviGbOOffS/pubhtml?gid=0&amp;single=true" target="_blank">Google Sheets</a>.
  </p>
</div>

<script>
(function () {
  var CSV_URL = "https://docs.google.com/spreadsheets/d/e/2PACX-1vSQMbXg1PCRH2WUdzTwGlFmi2Jz32fshL7fbE0ivkcGqKbU03eVfEI_DNHGKhThbT8YB7lviGbOOffS/pub?gid=0&single=true&output=csv";

  // Column order + per-column class, matching the header above.
  var COLUMNS = [
    { label: "Application", cls: "feelings-event" },
    { label: "Type", cls: "feelings-type" },
    { label: "Submitted work", cls: "feelings-work" },
    { label: "Date Due", cls: "feelings-due" },
    { label: "Status", cls: "feelings-status" },
    { label: "Date & location", cls: "feelings-location" },
    { label: "Personal Connection", cls: "feelings-connection" }
  ];

  // Quote-aware CSV parser. Handles "a, b" and escaped "" quotes, plus
  // \n / \r\n line endings inside and outside quoted fields.
  function parseCSV(text) {
    var rows = [];
    var row = [];
    var field = "";
    var inQuotes = false;
    var i = 0;
    while (i < text.length) {
      var c = text[i];
      if (inQuotes) {
        if (c === '"') {
          if (text[i + 1] === '"') { field += '"'; i += 2; continue; }
          inQuotes = false; i++; continue;
        }
        field += c; i++; continue;
      }
      if (c === '"') { inQuotes = true; i++; continue; }
      if (c === ",") { row.push(field); field = ""; i++; continue; }
      if (c === "\r") { i++; continue; }
      if (c === "\n") { row.push(field); rows.push(row); row = []; field = ""; i++; continue; }
      field += c; i++;
    }
    // Flush the trailing field/row (file may not end with a newline).
    if (field !== "" || row.length > 0) { row.push(field); rows.push(row); }
    return rows;
  }

  // Map a raw status value to a style category. Substring match so
  // variants map onto the base categories (e.g. "Winner" and
  // "Accepted & Ghosted" -> accepted). Values that fit none (e.g.
  // "Event cancelled", "Did not apply") get no dot.
  function statusClass(value) {
    var s = (value || "").toLowerCase();
    if (s.indexOf("pending") !== -1) return "status-pending";
    if (s.indexOf("accepted") !== -1 || s.indexOf("winner") !== -1) return "status-accepted";
    if (s.indexOf("rejected") !== -1) return "status-rejected";
    return "";
  }

  function render(rows) {
    var body = document.getElementById("feelings-rows");
    // rows[0] is the header row in the sheet; skip it, we render our own.
    for (var r = 1; r < rows.length; r++) {
      var cells = rows[r];
      // Skip fully-empty trailing rows.
      var hasContent = false;
      for (var k = 0; k < cells.length; k++) {
        if (cells[k] && cells[k].trim() !== "") { hasContent = true; break; }
      }
      if (!hasContent) continue;

      var rowEl = document.createElement("div");
      rowEl.className = "project-row feelings-row";
      for (var c = 0; c < COLUMNS.length; c++) {
        var col = COLUMNS[c];
        var cellEl = document.createElement("div");
        cellEl.className = "project-column " + col.cls +
          (c < COLUMNS.length - 1 ? " border margin" : "");
        cellEl.setAttribute("data-label", col.label);
        var p = document.createElement("p");
        p.textContent = (cells[c] || "").trim();
        if (col.cls === "feelings-status") {
          var sc = statusClass(p.textContent);
          if (sc) p.className = sc;
        }
        cellEl.appendChild(p);
        rowEl.appendChild(cellEl);
      }
      body.appendChild(rowEl);
    }
  }

  function showError() {
    var loading = document.getElementById("feelings-loading");
    if (loading) loading.style.display = "none";
    var err = document.getElementById("feelings-error");
    if (err) err.style.display = "block";
  }

  fetch(CSV_URL)
    .then(function (res) {
      if (!res.ok) throw new Error("HTTP " + res.status);
      return res.text();
    })
    .then(function (text) {
      render(parseCSV(text));
      var loading = document.getElementById("feelings-loading");
      if (loading) loading.parentNode.removeChild(loading);
    })
    .catch(function () { showError(); });
})();
</script>