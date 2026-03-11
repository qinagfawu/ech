function save(){
  fetch("/api/save.cgi", {
    method: "POST",
    body: JSON.stringify({
      server: document.getElementById("server").value,
      port: document.getElementById("port").value,
      doh: document.getElementById("doh").value,
      ech: document.getElementById("ech").value,
      ip: document.getElementById("ip").value,
      token: document.getElementById("token").value
    })
  });
}

function start(){
  fetch("/api/start.cgi");
}

function stop(){
  fetch("/api/stop.cgi");
}
