Service.create(
  [
    {name: "Messaging", operational: true},
    {name: "Search", operational: true},
    {name: "API", operational: true},
    {name: "CMS", operational: true}
    ]
  )

Incident.create(
  [
    {title: "incient", impact: "major", happended_at: Time.now},
    {title: "outage", impact: "minor", happended_at: Time.now},
    {title: "slow", impact: "minor", happended_at: Time.new(2021, 9, 10)},
    {title: "missing data", impact: "medium", happended_at: Time.new(2021, 9, 1)},
    {title: "outage", impact: "major", happended_at: Time.new(2021, 9, 5)},
    {title: "broken links", impact: "medium", happended_at: Time.new(2021, 9, 7)},
    {title: "service down", impact: "major", happended_at: Time.now}
  ]
)

ServiceIncident.create(
  [
    {service_id: 1, incident_id: 1},
    {service_id: 1, incident_id: 2},
    {service_id: 2, incident_id: 3},
    {service_id: 2, incident_id: 4},
    {service_id: 3, incident_id: 5},
    {service_id: 3, incident_id: 6},
    {service_id: 3, incident_id: 7},
    {service_id: 2, incident_id: 7},
    {service_id: 2, incident_id: 6},
    {service_id: 1, incident_id: 3},
  ]
)


Update.create(
  [
    {incident_id: 1, status: "resolved"},
    {incident_id: 1, status: "identified", message: "found the issue."},
    {incident_id: 1, status: "investigating", message: "looking into it."},
    {incident_id: 2, status: "identified", message: ""},
    {incident_id: 2, status: "monitoring", message: ""},
    {incident_id: 3, status: "identified", message: ""},
    {incident_id: 3, status: "investingating", message: ""},
    {incident_id: 3, status: "resolved"},
    {incident_id: 4, status: "identified", message: ""},
    {incident_id: 4, status: "monitoring", message: ""},
    {incident_id: 3, status: "", message: "something is happening"},
    {incident_id: 2, status: "", message: "nearly there"},
    {incident_id: 1, status: "", message: "restoring something"},
  ]
)
