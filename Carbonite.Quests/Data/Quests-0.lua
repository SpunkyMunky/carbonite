if not Nx.ModQuests then
	Nx.ModQuests = {}
end

local ModQuests={
  [171] = {
    Quest = [[A Warden of the Alliance|1|0|10|0|3]],
    Start = "23|301|32|49.17|89.82",
  },
  [172] = {
    Quest = [[Children's Week|2|0|10|0|3]],
    Start = "24|321|32|58.06|57.64",
    End = "25|321|32|58.16|57.57",
  },
  [1468] = {
    Quest = [[Children's Week|1|0|10|0|3]],
    Start = "143|301|32|56.26|54.18",
    End = "23|301|32|56.22|54.2",
  },
  [1789] = {
    Quest = [[The Symbol of Life|0|0|12|0|7]],
  },
  [1790] = {
    Quest = [[The Symbol of Life|0|0|12|0|7]],
  },
  [3630] = {
    Quest = [[Gnome Engineering|1|0|10|0|10]],
    Start = "215|301|32|62.83|32.14",
    End = "217|341|32|69.8|50.32",
  },
  [5502] = {
    Quest = [[A Warden of the Horde|2|0|10|0|3]],
    Start = "25|321|32|38.6|86.65",
  },
  [5892] = {
    Quest = [[Irondeep Supplies|1|0|51|0|0]],
    Start = "240|401|32|43.15|17.53",
    End = "240|401|32|43.14|17.53",
    Objectives = {
      [1] = {
         "nil|401|35|49.5|4|35.07|10.02",
         "nil|401|35|49.5|5.5|40.08|16.7",
         "nil|401|35|49.5|8|35.07|6.68",
         "nil|401|35|49.5|9|15.03|3.34",
         "nil|401|35|49.5|9.5|10.02|3.34",
         "nil|401|35|49.5|10|5.01|3.34",
       },
    },
  },
  [5893] = {
    Quest = [[Coldtooth Supplies|2|0|51|0|0]],
    Start = "241|401|32|46.65|84.12",
    End = "241|401|32|46.66|84.13",
    Objectives = {
      [1] = {
         "nil|401|35|44|67.5|20.04|3.34",
         "nil|401|35|42|68|40.08|10.02",
         "nil|401|35|42.5|69.5|35.07|3.34",
         "nil|401|35|43|70|30.06|3.34",
         "nil|401|35|43|70.5|35.07|3.34",
         "nil|401|35|43|71|40.08|10.02",
         "nil|401|35|43.5|72.5|15.03|3.34",
       },
    },
  },
  [5928] = {
    Quest = [[Heeding the Call|0|0|10|5922|1]],
  },
  [6622] = {
    Quest = [[Triage|2|0|35|0|22]],
    Start = "284|16|32|68.45|37.81",
    End = "284|16|32|68.44|37.82",
    Objectives = {
      [1] = {
         "nil|16|35|68|37.5|5.01|3.34",
       },
    },
  },
  [6624] = {
    Quest = [[Triage|1|0|35|0|22]],
    Start = "286|141|32|67.73|48.93",
    End = "286|141|32|67.76|49",
    Objectives = {
      [1] = {
         "nil|141|35|67.5|49|5.01|3.34",
       },
    },
  },
  [6741] = {
    Quest = [[More Booty!|0|0|51|0|0]],
  },
  [6781] = {
    Quest = [[More Armor Scraps|0|0|51|0|0]],
  },
  [6801] = {
    Quest = [[Lokholar the Ice Lord|0|0|51|0|0]],
  },
  [6825] = {
    Quest = [[Call of Air - Guse's Fleet|0|0|51|0|0]],
  },
  [6826] = {
    Quest = [[Call of Air - Jeztor's Fleet|0|0|51|0|0]],
  },
  [6827] = {
    Quest = [[Call of Air - Mulverick's Fleet|0|0|51|0|0]],
  },
  [6881] = {
    Quest = [[Ivus the Forest Lord|0|0|51|0|0]],
  },
  [6941] = {
    Quest = [[Call of Air - Vipore's Fleet|0|0|51|0|0]],
  },
  [6942] = {
    Quest = [[Call of Air - Slidore's Fleet|0|0|51|0|0]],
  },
  [6943] = {
    Quest = [[Call of Air - Ichman's Fleet|0|0|51|0|0]],
  },
  [6961] = {
    Quest = [[Great-father Winter is Here!|2|0|10|0|15]],
    Start = "290|321|32|52.53|77.31",
    End = "291|321|32|49.73|77.85",
  },
  [6962] = {
    Quest = [[Treats for Great-father Winter|2|0|10|0|15]],
    Start = "291|321|32|49.7|77.85",
    End = "291|321|32|49.71|77.87",
    Objectives = {
      [1] = {
         "nil|321|35|56|61|5.01|3.34",
         "nil|321|35|52|75.5|15.03|3.34",
         "nil|321|35|51.5|76|20.04|3.34",
         "nil|321|35|51|76.5|25.05|3.34",
         "nil|321|35|49.5|77|45.09|3.34",
         "nil|321|35|49.5|77.5|50.1|3.34",
         "nil|321|35|49.5|78|55.11|3.34",
       },
      [2] = {
         "nil|321|35|70|49|5.01|3.34",
         "nil|321|35|51.5|75.5|15.03|3.34",
         "nil|321|35|50|76|30.06|3.34",
         "nil|321|35|52|76.5|15.03|3.34",
         "nil|321|35|52.5|77|15.03|3.34",
         "nil|321|35|53|77.5|20.04|10.02",
         "nil|321|35|53|79|15.03|3.34",
         "nil|321|35|53|79.5|10.02|3.34",
         "nil|321|35|53.5|80|5.01|16.7",
       },
    },
  },
  [6964] = {
    Quest = [[The Reason for the Season|2|0|10|7061|15]],
    Start = "293|321|32|51.11|71.11",
    End = "294|321|32|39.66|47.31",
  },
  [6982] = {
    Quest = [[Coldtooth Supplies|1|0|51|0|0]],
    Start = "240|401|32|43.14|17.52",
    Objectives = {
      [1] = {
         "nil|401|35|44.5|67.5|15.03|3.34",
         "nil|401|35|44|68|20.04|6.68",
         "nil|401|35|44|69|15.03|3.34",
         "nil|401|35|43.5|69.5|20.04|3.34",
         "nil|401|35|43|70|25.05|10.02",
         "nil|401|35|43|71.5|20.04|3.34",
         "nil|401|35|43|72|15.03|3.34",
         "nil|401|35|43.5|72.5|5.01|3.34",
       },
    },
  },
  [6983] = {
    Quest = [[You're a Mean One...|2|0|30|6984|15]],
    Start = "292|24|32|42.34|41.09",
    End = "290|321|32|52.53|77.31",
    Objectives = {
      [1] = {
         "nil|24|35|40|26.5|5.01|6.68",
         "nil|24|35|40|27.5|10.02|13.36",
         "nil|24|35|39.5|29.5|15.03|3.34",
         "nil|24|35|39.5|30|10.02|3.34",
         "nil|24|35|39.5|30.5|5.01|10.02",
         "nil|24|35|39|32.5|5.01|16.7",
         "nil|24|35|39|35|10.02|16.7",
         "nil|24|35|44.5|35.5|35.07|3.34",
         "nil|24|35|44.5|36|20.04|3.34",
         "nil|24|35|44.5|36.5|15.03|3.34",
         "nil|24|35|44.5|37|10.02|3.34",
         "nil|24|35|44|37.5|15.03|3.34",
         "nil|24|35|43.5|38|20.04|3.34",
         "nil|24|35|41.5|38.5|40.08|3.34",
         "nil|24|35|43.5|39|20.04|3.34",
         "nil|24|35|44|39.5|15.03|3.34",
         "nil|24|35|44.5|40|5.01|13.36",
       },
    },
  },
  [6984] = {
    Quest = [[A Smokywood Pastures' Thank You!|2|0|30|0|15]],
    Start = "290|321|32|52.52|77.31",
    End = "291|321|32|49.75|77.84",
  },
  [6985] = {
    Quest = [[Irondeep Supplies|2|0|51|0|0]],
    Start = "241|401|32|46.65|84.12",
    End = "241|401|32|46.62|84.18",
    Objectives = {
      [1] = {
         "nil|401|35|49.5|4.5|35.07|3.34",
         "nil|401|35|49.5|5|40.08|20.04",
         "nil|401|35|49.5|8|35.07|10.02",
         "nil|401|35|49.5|9.5|15.03|3.34",
         "nil|401|35|49.5|10|10.02|3.34",
       },
    },
  },
  [7001] = {
    Quest = [[Empty Stables|2|0|51|0|0]],
    Start = "295|401|32|57.02|82.46",
  },
  [7002] = {
    Quest = [[Ram Hide Harnesses|0|0|51|0|0]],
  },
  [7021] = {
    Quest = [[Great-father Winter is Here!|2|0|10|0|15]],
    Start = "296|362|32|42.39|55.51",
    End = "291|321|32|49.65|78.02",
  },
  [7022] = {
    Quest = [[Greatfather Winter is Here!|1|0|10|0|15]],
    Start = "297|341|32|33.32|67.07",
    End = "298|341|32|33.13|65.63",
  },
  [7023] = {
    Quest = [[Greatfather Winter is Here!|1|0|10|0|15]],
    Start = "299|301|32|62.84|70.19",
    End = "298|341|32|33.09|65.55",
  },
  [7024] = {
    Quest = [[Great-father Winter is Here!|2|0|10|0|15]],
    Start = "300|382|32|67.85|38.64",
    End = "291|321|32|49.73|77.76",
  },
  [7025] = {
    Quest = [[Treats for Greatfather Winter|1|0|10|0|15]],
    Start = "298|341|32|33.1|65.54",
    End = "298|341|32|33.04|65.45",
    Objectives = {
      [1] = {
         "nil|341|35|35|61|5.01|3.34",
         "nil|341|35|31.5|62.5|20.04|10.02",
         "nil|341|35|32|64|15.03|13.36",
         "nil|341|35|31.5|66|20.04|10.02",
         "nil|341|35|31.5|67.5|25.05|3.34",
         "nil|341|35|32|68|25.05|3.34",
         "nil|341|35|32.5|68.5|30.06|3.34",
         "nil|341|35|32.5|69|20.04|3.34",
         "nil|341|35|33|69.5|10.02|3.34",
       },
      [2] = {
         "nil|341|35|18|51|15.03|6.68",
         "nil|341|35|32.5|64.5|10.02|3.34",
       },
    },
  },
  [7026] = {
    Quest = [[Ram Riding Harnesses|0|0|51|0|0]],
  },
  [7027] = {
    Quest = [[Empty Stables|1|0|51|0|0]],
    Start = "301|401|32|42.58|16.81",
    End = "301|401|32|42.57|16.83",
    Objectives = {
      [1] = {
         "nil|401|35|42.5|16.5|5.01|3.34",
       },
    },
  },
  [7043] = {
    Quest = [[You're a Mean One...|1|0|30|7045|15]],
    Start = "292|24|32|42.34|41.09",
    End = "297|341|32|33.29|67.1",
    Objectives = {
      [1] = {
         "nil|24|35|40|26.5|5.01|3.34",
         "nil|24|35|39.5|30.5|5.01|10.02",
         "nil|24|35|39|32.5|5.01|20.04",
         "nil|24|35|39|35.5|10.02|10.02",
         "nil|24|35|44.5|35.5|30.06|3.34",
         "nil|24|35|44.5|36|20.04|3.34",
         "nil|24|35|44.5|36.5|15.03|3.34",
         "nil|24|35|44.5|37|10.02|3.34",
         "nil|24|35|44|37.5|15.03|3.34",
         "nil|24|35|43.5|38|20.04|3.34",
         "nil|24|35|41.5|38.5|40.08|6.68",
         "nil|24|35|43.5|39.5|20.04|3.34",
         "nil|24|35|44|40|10.02|3.34",
         "nil|24|35|44.5|40.5|5.01|10.02",
       },
    },
  },
  [7045] = {
    Quest = [[A Smokywood Pastures' Thank You!|1|0|30|0|15]],
    Start = "297|341|32|33.3|67.09",
    End = "298|341|32|33.16|65.64",
  },
  [7061] = {
    Quest = [[The Feast of Winter Veil|2|0|10|0|15]],
    Start = "294|321|32|39.66|47.31",
    End = "302|362|32|59.79|51.66",
  },
  [7062] = {
    Quest = [[The Reason for the Season|1|0|10|7063|15]],
    Start = "303|341|32|30.14|59.73",
    End = "173|341|32|77.2|11.74",
  },
  [7063] = {
    Quest = [[The Feast of Winter Veil|1|0|10|0|15]],
    Start = "173|341|32|77.19|11.75",
    End = "304|341|32|39.33|55.8",
  },
  [7081] = {
    Quest = [[Alterac Valley Graveyards|1|0|51|0|0]],
    Start = "305|24|32|43.11|43.95",
    End = "305|24|32|43.12|43.93",
    Objectives = {
      [1] = {
         "nil|401|35|48.5|14.5|5.01|3.34",
         "nil|401|35|50.5|60|10.02|10.02",
       },
    },
  },
  [7082] = {
    Quest = [[The Graveyards of Alterac|2|0|51|0|0]],
    Start = "306|24|32|59.64|31.2",
    End = "306|24|32|59.63|31.21",
    Objectives = {
      [1] = {
         "nil|401|35|48.5|14.5|5.01|10.02",
         "nil|401|35|42.5|15.5|5.01|3.34",
         "nil|401|35|51.5|31|5.01|3.34",
         "nil|401|35|48.5|38.5|5.01|10.02",
         "nil|401|35|52|43.5|10.02|6.68",
       },
    },
  },
  [7101] = {
    Quest = [[Towers and Bunkers|2|0|51|0|0]],
    Start = "306|24|32|59.64|31.21",
    End = "306|24|32|59.63|31.22",
    Objectives = {
      [1] = {
         "nil|401|35|45.5|16|5.01|3.34",
         "nil|401|35|48|39|15.03|10.02",
         "nil|401|35|53|42|5.01|3.34",
         "nil|401|35|52.5|42.5|10.02|3.34",
         "nil|401|35|52|43|10.02|3.34",
         "nil|401|35|52|43.5|5.01|3.34",
       },
    },
  },
  [7102] = {
    Quest = [[Towers and Bunkers|1|0|51|0|0]],
    Start = "305|24|32|43.11|43.93",
    End = "305|24|32|43.13|43.93",
    Objectives = {
      [1] = {
         "nil|401|35|48.5|58.5|5.01|3.34",
         "nil|401|35|50|62|5.01|3.34",
         "nil|401|35|45|67|5.01|3.34",
         "nil|401|35|49|85|5.01|10.02",
       },
    },
  },
  [7121] = {
    Quest = [[The Quartermaster|1|0|51|0|0]],
    Start = "307|401|32|45.58|16.64",
    End = "240|401|32|43.15|17.54",
  },
  [7122] = {
    Quest = [[Capture a Mine|1|0|51|0|0]],
    Start = "305|24|32|43.1|43.93",
    End = "305|24|32|43.1|43.93",
  },
  [7123] = {
    Quest = [[Speak with our Quartermaster|2|0|51|0|0]],
    Start = "308|401|32|50.74|81.33",
    End = "241|401|32|46.65|84.13",
  },
  [7124] = {
    Quest = [[Capture a Mine|2|0|51|0|0]],
    Start = "306|401|32|46.65|84.12",
    End = "306|24|32|59.63|31.19",
    Objectives = {
      [1] = {
         "nil|401|35|51|5.5|5.01|3.34",
         "nil|401|35|51|6|10.02|3.34",
         "nil|401|35|51.5|6.5|10.02|3.34",
         "nil|401|35|52|7|10.02|3.34",
         "nil|401|35|48.5|13.5|10.02|3.34",
         "nil|401|35|48.5|14|15.03|3.34",
         "nil|401|35|49|14.5|10.02|3.34",
         "nil|401|35|49.5|67|5.01|6.68",
         "nil|401|35|45|67.5|10.02|3.34",
         "nil|401|35|44.5|68|15.03|3.34",
         "nil|401|35|44|68.5|20.04|6.68",
         "nil|401|35|44.5|69.5|15.03|3.34",
         "nil|401|35|45|70|10.02|3.34",
         "nil|401|35|45.5|70.5|5.01|3.34",
         "nil|401|35|46|71|5.01|3.34",
         "nil|401|35|46.5|71.5|5.01|3.34",
         "nil|401|35|47|72|20.04|3.34",
         "nil|401|35|47|72.5|15.03|3.34",
       },
    },
  },
  [7141] = {
    Quest = [[The Battle of Alterac|1|0|51|0|0]],
    Start = "309|24|32|45.34|45.33",
    End = "309|24|32|45.35|45.27",
    Objectives = {
      [1] = {
         "nil|401|35|49|15.5|10.02|6.68",
         "nil|401|35|43|68.5|5.01|3.34",
         "nil|401|35|50.5|81|5.01|3.34",
         "nil|401|35|48|86|15.03|3.34",
         "nil|401|35|47|86.5|20.04|3.34",
         "nil|401|35|47|87|15.03|3.34",
       },
    },
  },
  [7142] = {
    Quest = [[The Battle for Alterac|2|0|51|0|0]],
    Start = "310|24|32|58.64|34.23",
    End = "310|24|32|58.64|34.24",
    Objectives = {
      [1] = {
         "nil|401|35|41.5|12.5|15.03|6.68",
         "nil|401|35|41.5|13.5|20.04|3.34",
         "nil|401|35|42.5|14|15.03|3.34",
         "nil|401|35|43|14.5|25.05|3.34",
         "nil|401|35|43.5|15|15.03|3.34",
         "nil|401|35|43.5|15.5|10.02|3.34",
         "nil|401|35|43.5|20.5|5.01|3.34",
         "nil|401|35|51.5|39|5.01|3.34",
         "nil|401|35|51|46.5|5.01|3.34",
         "nil|401|35|44|51|5.01|3.34",
         "nil|401|35|50.5|65.5|5.01|3.34",
         "nil|401|35|51.5|95.5|5.01|3.34",
       },
    },
  },
  [7161] = {
    Quest = [[Proving Grounds|2|0|51|0|0]],
    Start = "311|24|32|57.79|33.39",
    End = "311|24|32|57.78|33.4",
    Objectives = {
      [1] = {
         "nil|401|35|50.5|93|5.01|3.34",
       },
    },
  },
  [7162] = {
    Quest = [[Proving Grounds|1|0|51|0|0]],
    Start = "312|24|32|44.69|46.15",
  },
  [7163] = {
    Quest = [[Rise and Be Recognized|0|0|51|0|0]],
  },
  [7164] = {
    Quest = [[Honored Amongst the Clan|0|0|51|0|0]],
  },
  [7165] = {
    Quest = [[Earned Reverence|0|0|51|0|0]],
  },
  [7166] = {
    Quest = [[Legendary Heroes|0|0|51|0|0]],
  },
  [7167] = {
    Quest = [[The Eye of Command|0|0|51|0|0]],
  },
  [7168] = {
    Quest = [[Rise and Be Recognized|0|0|51|0|0]],
  },
  [7169] = {
    Quest = [[Honored Amongst the Guard|0|0|51|0|0]],
  },
  [7170] = {
    Quest = [[Earned Reverence|0|0|51|0|0]],
  },
  [7171] = {
    Quest = [[Legendary Heroes|0|0|51|0|0]],
  },
  [7172] = {
    Quest = [[The Eye of Command|0|0|51|0|0]],
  },
  [7223] = {
    Quest = [[Armor Scraps|1|0|51|0|0]],
    Start = "313|401|32|43.45|15.56",
    End = "313|401|32|43.44|15.55",
    Objectives = {
      [1] = {
         "nil|401|35|44.5|14|15.03|3.34",
         "nil|401|35|44|14.5|25.05|3.34",
         "nil|401|35|48|14.5|25.05|3.34",
         "nil|401|35|42|15|85.17|3.34",
         "nil|401|35|42|15.5|45.09|3.34",
         "nil|401|35|48|15.5|25.05|3.34",
         "nil|401|35|42.5|16|35.07|3.34",
         "nil|401|35|48.5|16|20.04|3.34",
         "nil|401|35|43|16.5|25.05|3.34",
         "nil|401|35|49|16.5|15.03|3.34",
         "nil|401|35|43.5|17|15.03|3.34",
         "nil|401|35|49.5|17|10.02|6.68",
         "nil|401|35|44|17.5|5.01|10.02",
         "nil|401|35|49.5|18|5.01|13.36",
         "nil|401|35|50.5|21.5|5.01|10.02",
         "nil|401|35|50.5|23|10.02|3.34",
         "nil|401|35|51|23.5|5.01|6.68",
         "nil|401|35|50.5|28|5.01|6.68",
         "nil|401|35|51.5|30|5.01|13.36",
         "nil|401|35|51|40|5.01|3.34",
         "nil|401|35|44.5|45.5|5.01|3.34",
         "nil|401|35|49.5|50.5|5.01|3.34",
         "nil|401|35|46|57.5|15.03|3.34",
         "nil|401|35|47|58|45.09|3.34",
         "nil|401|35|47.5|58.5|40.08|3.34",
         "nil|401|35|50|59|15.03|3.34",
         "nil|401|35|50.5|59.5|10.02|3.34",
         "nil|401|35|51|60|5.01|3.34",
         "nil|401|35|50|65.5|5.01|3.34",
         "nil|401|35|50|76.5|5.01|3.34",
         "nil|401|35|49|87|5.01|10.02",
       },
    },
  },
  [7224] = {
    Quest = [[Enemy Booty|2|0|51|0|0]],
    Start = "314|401|32|49.56|82.71",
    End = "314|401|32|49.56|82.71",
    Objectives = {
      [1] = {
         "nil|401|35|42.5|14|15.03|3.34",
         "nil|401|35|42.5|14.5|30.06|3.34",
         "nil|401|35|49|14.5|15.03|3.34",
         "nil|401|35|42.5|15|15.03|3.34",
         "nil|401|35|42.5|15.5|10.02|3.34",
         "nil|401|35|51|25.5|5.01|3.34",
         "nil|401|35|51|31|5.01|10.02",
         "nil|401|35|50.5|32.5|5.01|13.36",
         "nil|401|35|50.5|34.5|10.02|3.34",
         "nil|401|35|51|35|10.02|6.68",
         "nil|401|35|48.5|40|5.01|3.34",
         "nil|401|35|48.5|40.5|10.02|3.34",
         "nil|401|35|48.5|41|15.03|3.34",
         "nil|401|35|49|41.5|15.03|3.34",
         "nil|401|35|49|42|40.08|3.34",
         "nil|401|35|49|42.5|20.04|3.34",
         "nil|401|35|44|45|10.02|3.34",
         "nil|401|35|44|45.5|15.03|3.34",
         "nil|401|35|44|46|20.04|3.34",
         "nil|401|35|46|46.5|15.03|3.34",
         "nil|401|35|46|56|5.01|3.34",
         "nil|401|35|50.5|57|15.03|3.34",
         "nil|401|35|48|57.5|40.08|6.68",
         "nil|401|35|48|58.5|35.07|3.34",
         "nil|401|35|50|59|15.03|3.34",
         "nil|401|35|50.5|59.5|10.02|3.34",
         "nil|401|35|51|60|5.01|6.68",
         "nil|401|35|50|63|5.01|6.68",
         "nil|401|35|52.5|67|5.01|3.34",
         "nil|401|35|49.5|74.5|5.01|10.02",
         "nil|401|35|49.5|76|10.02|23.38",
         "nil|401|35|54|76|5.01|3.34",
         "nil|401|35|49|79.5|15.03|3.34",
         "nil|401|35|48.5|80|10.02|3.34",
         "nil|401|35|48|80.5|10.02|3.34",
         "nil|401|35|47.5|86|20.04|3.34",
         "nil|401|35|48|86.5|15.03|3.34",
         "nil|401|35|48.5|87|10.02|3.34",
         "nil|401|35|49|87.5|5.01|6.68",
       },
    },
  },
  [7385] = {
    Quest = [[A Gallon of Blood|0|0|51|0|0]],
  },
  [7386] = {
    Quest = [[Crystal Cluster|0|0|51|0|0]],
  },
  [7838] = {
    Quest = [[Arena Grandmaster|0|55|0|0|0]],
  },
  [7905] = {
    Quest = [[The Darkmoon Faire|1|0|6|0|0]],
    Start = "324|341|32|29.35|62.38",
    End = "325|30|32|41.55|68.88",
  },
  [7907] = {
    Quest = [[Darkmoon Beast Deck|0|0|1|0|24]],
  },
  [7926] = {
    Quest = [[The Darkmoon Faire|2|0|6|0|0]],
    Start = "326|321|32|52.03|75.68",
    End = "325|9|32|37.97|38.44",
  },
  [7927] = {
    Quest = [[Darkmoon Portals Deck|2|0|1|0|24]],
  },
  [7928] = {
    Quest = [[Darkmoon Warlords Deck|1|0|1|0|24]],
    End = "327|30|32|41.29|69.97",
  },
  [7929] = {
    Quest = [[Darkmoon Elementals Deck|2|0|1|0|24]],
  },
  [7937] = {
    Quest = [[Your Fortune Awaits You...|1|0|10|0|24]],
    Start = "328|9|32|37.31|38.82",
  },
  [7944] = {
    Quest = [[Your Fortune Awaits You...|2|0|10|0|24]],
    Start = "328|9|32|37.75|38.43",
  },
  [7945] = {
    Quest = [[Your Fortune Awaits You...|0|0|10|0|24]],
    Start = "328|481|32|74.79|32.88",
  },
  [7946] = {
    Quest = [[Spawn of Jubjub|0|0|1|0|24]],
  },
  [8149] = {
    Quest = [[Honoring a Hero|1|0|30|0|15]],
    Objectives = {
      [1] = {
         "nil|22|35|52|83|5.01|3.34",
       },
    },
  },
  [8150] = {
    Quest = [[Honoring a Hero|2|0|30|0|15]],
    Objectives = {
      [1] = {
         "nil|43|35|82.5|79|5.01|3.34",
       },
    },
  },
  [8193] = {
    Quest = [[Master Angler|0|0|1|0|12]],
  },
  [8194] = {
    Quest = [[Apprentice Angler|0|0|1|0|12]],
  },
  [8221] = {
    Quest = [[Rare Fish - Keefer's Angelfish|0|0|1|0|12]],
  },
  [8224] = {
    Quest = [[Rare Fish - Dezian Queenfish|0|0|1|0|12]],
  },
  [8225] = {
    Quest = [[Rare Fish - Brownell's Blue Striped Racer|0|0|1|0|12]],
  },
  [8271] = {
    Quest = [[Hero of the Stormpike|0|0|51|0|0]],
  },
  [8272] = {
    Quest = [[Hero of the Frostwolf|0|0|51|0|0]],
  },
  [8311] = {
    Quest = [[Hallow's End Treats for Jesper!|0|0|10|0|25]],
  },
  [8312] = {
    Quest = [[Hallow's End Treats for Spoops!|0|0|10|0|25]],
  },
  [8353] = {
    Quest = [[Chicken Clucking for a Mint|0|0|10|0|25]],
  },
  [8354] = {
    Quest = [[Chicken Clucking for a Mint|0|0|10|0|25]],
  },
  [8355] = {
    Quest = [[Incoming Gumdrop|0|0|10|0|25]],
  },
  [8356] = {
    Quest = [[Flexing for Nougat|0|0|10|0|25]],
  },
  [8357] = {
    Quest = [[Dancing for Marzipan|0|0|10|0|25]],
  },
  [8358] = {
    Quest = [[Incoming Gumdrop|0|0|10|0|25]],
  },
  [8359] = {
    Quest = [[Flexing for Nougat|0|0|10|0|25]],
  },
  [8360] = {
    Quest = [[Dancing for Marzipan|0|0|10|0|25]],
  },
  [8367] = {
    Quest = [[For Great Honor|0|0|61|0|26]],
  },
  [8371] = {
    Quest = [[Concerted Efforts|0|0|61|0|26]],
  },
  [8619] = {
    Quest = [[Morndeep the Elder|0|0|1|0|29]],
  },
  [8635] = {
    Quest = [[Splitrock the Elder|0|0|1|0|29]],
  },
  [8636] = {
    Quest = [[Rumblerock the Elder|0|0|1|0|29]],
  },
  [8642] = {
    Quest = [[Silvervein the Elder|0|0|1|0|29]],
  },
  [8643] = {
    Quest = [[Highpeak the Elder|0|0|1|0|29]],
  },
  [8644] = {
    Quest = [[Stonefort the Elder|0|0|1|0|29]],
  },
  [8645] = {
    Quest = [[Obsidian the Elder|0|0|1|0|29]],
  },
  [8646] = {
    Quest = [[Hammershout the Elder|0|0|1|0|29]],
  },
  [8647] = {
    Quest = [[Bellowrage the Elder|0|0|1|0|29]],
  },
  [8648] = {
    Quest = [[Darkcore the Elder|0|0|1|0|29]],
  },
  [8649] = {
    Quest = [[Stormbrow the Elder|0|0|1|0|29]],
  },
  [8650] = {
    Quest = [[Snowcrown the Elder|0|0|1|0|29]],
  },
  [8651] = {
    Quest = [[Ironband the Elder|0|0|1|0|29]],
  },
  [8652] = {
    Quest = [[Graveborn the Elder|0|0|1|0|29]],
  },
  [8653] = {
    Quest = [[Goldwell the Elder|0|0|1|0|29]],
  },
  [8654] = {
    Quest = [[Primestone the Elder|0|0|1|0|29]],
  },
  [8670] = {
    Quest = [[Runetotem the Elder|0|0|1|0|29]],
  },
  [8671] = {
    Quest = [[Ragetotem the Elder|0|0|1|0|29]],
  },
  [8672] = {
    Quest = [[Stonespire the Elder|0|0|1|0|29]],
  },
  [8673] = {
    Quest = [[Bloodhoof the Elder|0|0|1|0|29]],
  },
  [8674] = {
    Quest = [[Winterhoof the Elder|0|0|1|0|29]],
  },
  [8675] = {
    Quest = [[Skychaser the Elder|0|0|1|0|29]],
  },
  [8676] = {
    Quest = [[Wildmane the Elder|0|0|1|0|29]],
  },
  [8677] = {
    Quest = [[Darkhorn the Elder|0|0|1|0|29]],
  },
  [8678] = {
    Quest = [[Wheathoof the Elder|0|0|1|0|29]],
  },
  [8679] = {
    Quest = [[Grimtotem the Elder|0|0|1|0|29]],
  },
  [8680] = {
    Quest = [[Windtotem the Elder|0|0|1|0|29]],
  },
  [8681] = {
    Quest = [[Thunderhorn the Elder|0|0|1|0|29]],
  },
  [8682] = {
    Quest = [[Skyseer the Elder|0|0|1|0|29]],
  },
  [8683] = {
    Quest = [[Dawnstrider the Elder|0|0|1|0|29]],
  },
  [8684] = {
    Quest = [[Dreamseer the Elder|0|0|1|0|29]],
  },
  [8685] = {
    Quest = [[Mistwalker the Elder|0|0|1|0|29]],
  },
  [8686] = {
    Quest = [[High Mountain the Elder|0|0|1|0|29]],
  },
  [8688] = {
    Quest = [[Windrun the Elder|0|0|1|0|29]],
  },
  [8713] = {
    Quest = [[Starsong the Elder|0|0|1|0|29]],
  },
  [8714] = {
    Quest = [[Moonstrike the Elder|0|0|1|0|29]],
  },
  [8715] = {
    Quest = [[Bladeleaf the Elder|0|0|1|0|29]],
  },
  [8716] = {
    Quest = [[Starglade the Elder|0|0|1|0|29]],
  },
  [8717] = {
    Quest = [[Moonwarden the Elder|0|0|1|0|29]],
  },
  [8718] = {
    Quest = [[Bladeswift the Elder|0|0|1|0|29]],
  },
  [8719] = {
    Quest = [[Bladesing the Elder|0|0|1|0|29]],
  },
  [8720] = {
    Quest = [[Skygleam the Elder|0|0|1|0|29]],
  },
  [8721] = {
    Quest = [[Starweave the Elder|0|0|1|0|29]],
  },
  [8722] = {
    Quest = [[Meadowrun the Elder|0|0|1|0|29]],
  },
  [8723] = {
    Quest = [[Nightwind the Elder|0|0|1|0|29]],
  },
  [8724] = {
    Quest = [[Morningdew the Elder|0|0|1|0|29]],
  },
  [8725] = {
    Quest = [[Riversong the Elder|0|0|1|0|29]],
  },
  [8726] = {
    Quest = [[Brightspear the Elder|0|0|1|0|29]],
  },
  [8727] = {
    Quest = [[Farwhisper the Elder|0|0|1|0|29]],
  },
  [8744] = {
    Quest = [[A Carefully Wrapped Present|0|0|1|0|15]],
  },
  [8763] = {
    Quest = [[The Hero of the Day|1|0|40|0|15]],
    Start = "297|341|32|33.31|67.14",
    End = "376|341|32|36.91|70.23",
    Objectives = {
      [1] = {
         "nil|341|35|32.5|64|10.02|6.68",
       },
    },
  },
  [8767] = {
    Quest = [[A Gently Shaken Gift|0|0|1|0|15]],
  },
  [8768] = {
    Quest = [[A Gaily Wrapped Present|0|0|20|0|15]],
  },
  [8769] = {
    Quest = [[A Ticking Present|0|0|40|0|15]],
  },
  [8788] = {
    Quest = [[A Gently Shaken Gift|0|0|1|0|15]],
  },
  [8799] = {
    Quest = [[The Hero of the Day|2|0|40|0|15]],
    Start = "290|321|32|52.55|77.32",
    End = "376|321|32|53.07|76.82",
    Objectives = {
      [1] = {
         "nil|321|35|52|75|10.02|3.34",
         "nil|321|35|51.5|75.5|15.03|3.34",
         "nil|321|35|50|76|30.06|3.34",
         "nil|321|35|49|80.5|5.01|3.34",
       },
    },
  },
  [8803] = {
    Quest = [[A Festive Gift|0|0|10|0|15]],
  },
  [8827] = {
    Quest = [[Winter's Presents|1|0|1|0|15]],
    Start = "377|301|32|67.75|71.61",
    End = "298|341|32|33.16|65.51",
  },
  [8828] = {
    Quest = [[Winter's Presents|2|0|1|0|15]],
    Start = "377|321|32|50.1|61.69",
    End = "291|321|32|49.71|78.06",
  },
  [8860] = {
    Quest = [[New Year Celebrations!|1|0|1|0|15]],
    Start = "377|301|32|67.76|71.61",
    End = "378|301|32|60.45|75.11",
  },
  [8861] = {
    Quest = [[New Year Celebrations!|2|0|1|0|15]],
    Start = "377|321|32|50.05|61.75",
    End = "379|362|32|45.8|64.53",
  },
  [8866] = {
    Quest = [[Bronzebeard the Elder|0|0|1|0|29]],
  },
  [8867] = {
    Quest = [[Lunar Fireworks|0|0|1|8883|29]],
    Start = "380|321|32|52.26|58.55",
    End = "380|362|32|70.78|27.72",
    Objectives = {
      [1] = {
         "nil|321|35|51.5|57.5|10.02|3.34",
         "nil|321|35|51.5|58|15.03|10.02",
       },
      [2] = {
         "nil|321|35|51|57.5|15.03|3.34",
         "nil|321|35|51|58|20.04|6.68",
         "nil|321|35|51.5|59|15.03|3.34",
         "nil|321|35|52|59.5|10.02|3.34",
       },
    },
  },
  [8868] = {
    Quest = [[Elune's Blessing|0|0|40|0|15]],
    Start = "381|241|32|53.57|35.34",
    End = "381|241|32|53.59|35.36",
    Objectives = {
      [1] = {
         "nil|241|35|64|61|15.03|10.02",
         "nil|241|35|64.5|62.5|5.01|3.34",
       },
    },
  },
  [8870] = {
    Quest = [[The Lunar Festival|1|0|1|8867|29]],
    Start = "382|341|32|30.75|61.71",
    End = "380|341|32|28.87|15.9",
  },
  [8871] = {
    Quest = [[The Lunar Festival|1|0|1|8867|29]],
    Start = "382|301|32|61.8|75.61",
    End = "380|30|32|34.24|50.66",
  },
  [8872] = {
    Quest = [[The Lunar Festival|1|0|1|8867|29]],
    Start = "382|381|32|45.12|51.91",
    End = "380|381|32|38.65|30.38",
  },
  [8873] = {
    Quest = [[The Lunar Festival|2|0|1|8867|29]],
    Start = "383|321|32|49.84|80.99",
    End = "380|321|32|52.26|58.52",
  },
  [8874] = {
    Quest = [[The Lunar Festival|2|0|1|8867|29]],
    Start = "383|382|32|66.83|43.34",
    End = "380|321|32|52.24|58.58",
  },
  [8875] = {
    Quest = [[The Lunar Festival|2|0|1|8867|29]],
    Start = "383|362|32|38.64|63.07",
    End = "380|321|32|52.22|58.71",
  },
  [8883] = {
    Quest = [[Valadar Starsong|0|0|1|0|29]],
    Start = "380|321|32|52.31|58.55",
    End = "381|241|32|53.56|35.33",
  },
  [9259] = {
    Quest = [[Traitor to the Bloodsail|0|0|30|0|0]],
  },
  [9266] = {
    Quest = [[Making Amends|0|0|40|0|0]],
  },
  [9267] = {
    Quest = [[Mending Old Wounds|0|0|15|0|0]],
  },
  [9268] = {
    Quest = [[War at Sea|0|0|40|0|0]],
  },
  [9324] = {
    Quest = [[Stealing Orgrimmar's Flame|1|0|1|0|32]],
  },
  [9325] = {
    Quest = [[Stealing Thunder Bluff's Flame|1|0|1|0|32]],
  },
  [9326] = {
    Quest = [[Stealing the Undercity's Flame|1|0|1|0|32]],
  },
  [9330] = {
    Quest = [[Stealing Stormwind's Flame|2|0|1|0|32]],
  },
  [9331] = {
    Quest = [[Stealing Ironforge's Flame|2|0|1|0|32]],
  },
  [9332] = {
    Quest = [[Stealing Darnassus's Flame|2|0|1|0|32]],
  },
  [9339] = {
    Quest = [[A Thief's Reward|0|0|1|0|32]],
  },
  [9364] = {
    Quest = [[Fragmented Magic|0|0|60|0|17]],
  },
  [9365] = {
    Quest = [[A Thief's Reward|0|0|1|0|32]],
  },
  [9529] = {
    Quest = [[The Stone|2|0|10|9619|8]],
    End = "502|463|32|42.29|16.47",
  },
  [10788] = {
    Quest = [[Return to Talionia|0|0|10|9529|8]],
  },
  [10789] = {
    Quest = [[Return to Carendin Halgar|0|0|10|1473|8]],
  },
  [10790] = {
    Quest = [[Return to Gan'rul Bloodeye|0|0|10|1501|8]],
  },
  [10942] = {
    Quest = [[Children's Week|2|0|60|0|3]],
    Start = "938|481|32|74.87|47.85",
    End = "939|481|32|74.78|47.67",
  },
  [10943] = {
    Quest = [[Children's Week|1|0|60|0|3]],
    Start = "938|481|32|74.83|47.79",
    End = "940|481|32|74.7|47.71",
  },
  [10945] = {
    Quest = [[Hch'uu and the Mushroom People|2|0|60|0|3]],
    Start = "939|481|32|74.81|47.7",
  },
  [10950] = {
    Quest = [[Auchindoun and the Ring of Observance|1|0|60|0|3]],
    Start = "940|481|32|74.7|47.71",
  },
  [10951] = {
    Quest = [[A Trip to the Dark Portal|2|0|60|0|3]],
    Start = "939|481|32|74.77|47.65",
  },
  [10952] = {
    Quest = [[A Trip to the Dark Portal|1|0|60|0|3]],
    Start = "940|481|32|74.69|47.71",
  },
  [10953] = {
    Quest = [[Visit the Throne of the Elements|2|0|60|0|3]],
    Start = "939|481|32|74.82|47.71",
  },
  [10954] = {
    Quest = [[Jheel is at Aeris Landing!|1|0|60|0|3]],
    Start = "940|481|32|74.7|47.69",
  },
  [10956] = {
    Quest = [[The Seat of the Naaru|1|0|60|10968|3]],
    Start = "940|465|32|88.63|50.26",
  },
  [10962] = {
    Quest = [[Time to Visit the Caverns|1|0|60|0|3]],
    Start = "940|465|32|88.62|50.26",
  },
  [10963] = {
    Quest = [[Time to Visit the Caverns|2|0|60|0|3]],
    Start = "939|465|32|88.66|50.24",
  },
  [10966] = {
    Quest = [[Back to the Orphanage|1|0|60|0|3]],
    Start = "940|161|32|63.03|57.24",
    End = "938|481|32|74.82|47.82",
  },
  [10967] = {
    Quest = [[Back to the Orphanage|2|0|60|0|3]],
    Start = "939|480|32|76.46|80.08",
    End = "938|481|32|74.83|47.87",
  },
  [10968] = {
    Quest = [[Call on the Farseer|1|0|60|0|3]],
    Start = "942|471|32|57.6|41.27",
  },
  [11117] = {
    Quest = [[Catch the Wild Wolpertinger!|0|0|1|0|33]],
  },
  [11118] = {
    Quest = [[Pink Elekks On Parade|1|0|1|0|33]],
    Objectives = {
      [1] = {
         "nil|504|35|44|77.5|25.05|3.34",
       },
      [2] = {
         "nil|504|35|44|77.5|25.05|3.34",
       },
      [3] = {
         "nil|504|35|70.5|43.5|5.01|3.34",
         "nil|504|35|44|77.5|25.05|3.34",
       },
    },
  },
  [11120] = {
    Quest = [[Pink Elekks On Parade|2|0|1|0|33]],
    Objectives = {
      [1] = {
         "nil|491|35|62.5|22.5|5.01|3.34",
       },
      [2] = {
         "nil|4|35|46.5|12.5|5.01|3.34",
       },
      [3] = {
         "nil|491|35|62.5|22.5|5.01|3.34",
       },
    },
  },
  [11122] = {
    Quest = [[There and Back Again|0|0|1|0|33]],
  },
  [11131] = {
    Quest = [[Stop the Fires!|0|0|1|0|25]],
  },
  [11219] = {
    Quest = [[Stop the Fires!|0|0|1|0|25]],
  },
  [11242] = {
    Quest = [[Free at Last!|1|0|60|0|25]],
  },
  [11293] = {
    Quest = [[Bark for the Barleybrews!|0|0|1|0|33]],
  },
  [11294] = {
    Quest = [[Bark for the Thunderbrews!|0|0|1|0|33]],
  },
  [11318] = {
    Quest = [[Now This is Ram Racing... Almost.|0|0|1|0|33]],
  },
  [11356] = {
    Quest = [[Costumed Orphan Matron|0|0|1|0|25]],
  },
  [11357] = {
    Quest = [[Masked Orphan Matron|0|0|1|0|25]],
  },
  [11360] = {
    Quest = [[Fire Brigade Practice|0|0|1|0|25]],
  },
  [11361] = {
    Quest = [[Fire Training|0|0|1|0|25]],
  },
  [11401] = {
    Quest = [[Call the Headless Horseman|0|0|75|0|25]],
  },
  [11403] = {
    Quest = [[Free at Last!|0|0|60|0|25]],
  },
  [11404] = {
    Quest = [[Call the Headless Horseman|0|0|75|0|25]],
  },
  [11405] = {
    Quest = [[Call the Headless Horseman|0|0|75|0|25]],
  },
  [11407] = {
    Quest = [[Bark for Drohn's Distillery!|0|0|1|0|33]],
  },
  [11408] = {
    Quest = [[Bark for T'chali's Voodoo Brewery!|0|0|1|0|33]],
  },
  [11409] = {
    Quest = [[Now This is Ram Racing... Almost.|0|0|1|0|33]],
  },
  [11412] = {
    Quest = [[There and Back Again|0|0|1|0|33]],
  },
  [11431] = {
    Quest = [[Catch the Wild Wolpertinger!|0|0|1|0|33]],
  },
  [11439] = {
    Quest = [[Fire Brigade Practice|0|0|1|0|25]],
  },
  [11440] = {
    Quest = [[Fire Brigade Practice|0|0|1|0|25]],
  },
  [11441] = {
    Quest = [[Brewfest!|0|0|1|0|33]],
  },
  [11446] = {
    Quest = [[Brewfest!|0|0|1|0|33]],
  },
  [11449] = {
    Quest = [[Fire Training|0|0|1|0|25]],
  },
  [11450] = {
    Quest = [[Fire Training|0|0|1|0|25]],
  },
  [11472] = {
    Quest = [[The Way to His Heart...|0|0|69|0|0]],
    Start = "1088|491|32|24.61|58.8",
    End = "1088|491|32|24.62|58.82",
    Objectives = {
      [1] = {
         "nil|491|35|30.5|71|10.02|6.68",
       },
    },
  },
  [11505] = {
    Quest = [[Spirits of Auchindoun|1|0|62|0|0]],
    Start = "1096|478|32|55.84|53.76",
    End = "1096|478|32|55.84|53.76",
    Objectives = {
      [1] = {
         "nil|478|35|32|57.5|5.01|3.34",
         "nil|478|35|48.5|60|5.01|3.34",
         "nil|478|35|47|72|5.01|3.34",
         "nil|478|35|40|78|5.01|3.34",
       },
    },
  },
  [11506] = {
    Quest = [[Spirits of Auchindoun|2|0|62|0|0]],
    Start = "1097|478|32|49.86|46.67",
    End = "1097|478|32|49.88|46.67",
    Objectives = {
      [1] = {
         "nil|478|35|42|53.5|5.01|6.68",
         "nil|478|35|32.5|57.5|5.01|3.34",
         "nil|478|35|48.5|60|10.02|3.34",
       },
    },
  },
  [11528] = {
    Quest = [[A Winter Veil Gift|0|0|10|0|15]],
  },
  [11580] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11581] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11583] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11584] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11657] = {
    Quest = [[Torch Catching|1|0|1|0|32]],
    Start = "1162|301|32|49.9|72.1",
    Objectives = {
      [1] = {
         "nil|301|35|48|69.5|10.02|13.36",
       },
    },
  },
  [11731] = {
    Quest = [[Torch Tossing|1|0|1|11657|32]],
    Start = "1162|301|32|49.94|72.15",
    Objectives = {
      [1] = {
         "nil|301|35|49.5|72|5.01|3.34",
       },
    },
  },
  [11732] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11734] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11735] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11736] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11737] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11738] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11739] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11740] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11741] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11742] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11743] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11744] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11745] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11746] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11747] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11748] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11749] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11750] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11751] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11752] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11753] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11754] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11755] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11756] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11757] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11758] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11759] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11760] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11761] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11762] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11763] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11764] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11765] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11766] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11767] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11768] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11769] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11770] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11771] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11772] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11773] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11774] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11775] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11776] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11777] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11778] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11779] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11780] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11781] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11782] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11783] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11784] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11785] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11786] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11787] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11799] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11800] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11801] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11802] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11803] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [11804] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11805] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11806] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11807] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11808] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11809] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11810] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11811] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11812] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11813] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11814] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11815] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11816] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11817] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11818] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11819] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11820] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11821] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11822] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11823] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11824] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11825] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11826] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11827] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11828] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11829] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11830] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11831] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11832] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11833] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11834] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11835] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11836] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11837] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11838] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11839] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11840] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11841] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11842] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11843] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11844] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11845] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11846] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11847] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11848] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11849] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11850] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11851] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11852] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11853] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11854] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11855] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11856] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11857] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11858] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11859] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11860] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11861] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11862] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11863] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [11882] = {
    Quest = [[Playing with Fire|1|0|1|0|32]],
    Start = "1212|30|32|43.76|62.29",
    End = "1162|301|32|50.04|72.18",
  },
  [11886] = {
    Quest = [[Unusual Activity|0|0|16|11891|32]],
    Start = "1214|321|32|47.13|37.73",
  },
  [11891] = {
    Quest = [[An Innocent Disguise|0|0|16|0|32]],
    Start = "1218|43|32|15.29|20.29",
    End = "1218|43|32|9.97|12.42",
  },
  [11915] = {
    Quest = [[Playing with Fire|2|0|1|0|32]],
    Start = "1226|4|32|52.38|47.29",
    End = "1227|321|32|46.71|37.18",
  },
  [11921] = {
    Quest = [[More Torch Tossing|1|0|1|0|32]],
    Start = "1162|301|32|49.98|72.14",
    Objectives = {
      [1] = {
         "nil|301|35|49.5|72|5.01|3.34",
       },
    },
  },
  [11922] = {
    Quest = [[Torch Tossing|2|0|1|11923|32]],
    Start = "1227|321|32|46.59|37.16",
    Objectives = {
      [1] = {
         "nil|321|35|46|36.5|10.02|6.68",
       },
    },
  },
  [11923] = {
    Quest = [[Torch Catching|2|0|1|0|32]],
    Start = "1227|321|32|46.51|37.1",
    Objectives = {
      [1] = {
         "nil|321|35|43.5|38|15.03|10.02",
       },
    },
  },
  [11924] = {
    Quest = [[More Torch Catching|1|0|1|0|32]],
    Start = "1162|381|32|63.17|47.23",
    Objectives = {
      [1] = {
         "nil|301|35|48|70|15.03|6.68",
       },
    },
  },
  [11925] = {
    Quest = [[More Torch Catching|2|0|1|0|32]],
    Start = "1227|321|32|46.57|37.08",
    Objectives = {
      [1] = {
         "nil|321|35|44|37.5|5.01|3.34",
         "nil|321|35|43.5|38|15.03|10.02",
       },
    },
  },
  [11926] = {
    Quest = [[More Torch Tossing|2|0|1|0|32]],
    Start = "1227|321|32|46.63|37.14",
    Objectives = {
      [1] = {
         "nil|321|35|46|36.5|10.02|6.68",
       },
    },
  },
  [11933] = {
    Quest = [[Stealing the Exodar's Flame|2|0|1|0|32]],
  },
  [11935] = {
    Quest = [[Stealing Silvermoon's Flame|1|0|1|0|32]],
  },
  [11964] = {
    Quest = [[Incense for the Summer Scorchlings|1|0|1|0|32]],
    Start = "1241|301|32|49.58|72.09",
  },
  [11966] = {
    Quest = [[Incense for the Festival Scorchlings|2|0|1|0|32]],
    Start = "1242|321|32|47.73|38.2",
  },
  [11970] = {
    Quest = [[The Master of Summer Lore|1|0|1|0|32]],
    Start = "1243|301|32|61.65|74.15",
    End = "1241|301|32|49.6|72.09",
  },
  [11971] = {
    Quest = [[The Spinner of Summer Tales|2|0|1|0|32]],
    Start = "1244|321|32|51.57|75.23",
    End = "1242|321|32|47.78|38.26",
  },
  [11972] = {
    Quest = [[Shards of Ahune|0|0|65|0|32]],
  },
  [11975] = {
    Quest = [[Now, When I Grow Up...|2|0|60|0|3]],
    Start = "939|465|32|88.65|50.24",
  },
  [12012] = {
    Quest = [[Inform the Elder|2|0|16|0|32]],
    Start = "1218|43|32|9.7|12.75",
    End = "1214|321|32|47.2|37.66",
  },
  [12020] = {
    Quest = [[This One Time, When I Was Drunk...|0|0|1|0|33]],
  },
  [12022] = {
    Quest = [[Chug and Chuck!|0|0|1|0|33]],
  },
  [12133] = {
    Quest = [[Smash the Pumpkin|0|0|1|0|25]],
  },
  [12135] = {
    Quest = [["Let the Fires Come!"|0|0|1|0|25]],
  },
  [12139] = {
    Quest = [["Let the Fires Come!"|0|0|1|0|25]],
  },
  [12155] = {
    Quest = [[Smash the Pumpkin|0|0|1|0|25]],
  },
  [12191] = {
    Quest = [[Chug and Chuck!|0|0|1|0|33]],
  },
  [12192] = {
    Quest = [[This One Time, When I Was Drunk...|0|0|1|0|33]],
  },
  [12286] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12306] = {
    Quest = [[Brew of the Month Club|0|0|1|0|33]],
  },
  [12331] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12332] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12333] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12334] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12335] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12336] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12337] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12338] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12339] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12340] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12341] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12342] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12343] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12344] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12345] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12347] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12348] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12349] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12350] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12351] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12352] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12353] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12354] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12355] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12356] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12357] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12358] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12359] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12360] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12361] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12362] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12363] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12364] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12365] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12366] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12367] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12368] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12369] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12370] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12371] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12373] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12374] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12375] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12376] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12377] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12378] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12379] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12380] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12381] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12382] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12383] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12384] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12385] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12386] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12387] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12388] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12389] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12390] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12391] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12392] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12393] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12394] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12395] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12396] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12397] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12398] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12399] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12400] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12401] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12402] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12403] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12404] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12405] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12406] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12407] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12408] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12409] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12410] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12420] = {
    Quest = [[Brew of the Month Club|0|0|1|0|33]],
  },
  [12421] = {
    Quest = [[Brew of the Month Club|0|0|1|0|33]],
  },
  [12491] = {
    Quest = [[Direbrew's Dire Brew|1|0|75|0|33]],
  },
  [12492] = {
    Quest = [[Direbrew's Dire Brew|2|0|75|0|33]],
  },
  [12940] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12941] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12944] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12945] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12946] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12947] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12950] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [12958] = {
    Quest = [[Shipment: Blood Jade Amulet |0|0|65|0|36]],
    Start = "1556|504|32|40.37|35.1",
    End = "1556|504|32|40.36|35.11",
    Objectives = {
      [1] = {
         "nil|504|35|52.5|14.5|15.03|3.34",
         "nil|504|35|52.5|15|25.05|3.34",
         "nil|504|35|52|15.5|30.06|3.34",
         "nil|504|35|51.5|16|35.07|3.34",
         "nil|504|35|50.5|16.5|15.03|3.34",
         "nil|504|35|53.5|16.5|15.03|3.34",
         "nil|504|35|54|17|10.02|3.34",
         "nil|504|35|54.5|17.5|5.01|3.34",
         "nil|504|35|55|18|5.01|10.02",
         "nil|504|35|52|20.5|5.01|3.34",
         "nil|504|35|49|25|5.01|3.34",
         "nil|504|35|62.5|26.5|5.01|3.34",
         "nil|504|35|50.5|28.5|5.01|3.34",
         "nil|504|35|40|31|10.02|13.36",
         "nil|504|35|62.5|31|10.02|3.34",
         "nil|504|35|62|31.5|5.01|3.34",
         "nil|504|35|61.5|32|5.01|3.34",
         "nil|504|35|61|32.5|5.01|3.34",
         "nil|504|35|40|33|5.01|16.7",
         "nil|504|35|40.5|46|5.01|3.34",
         "nil|504|35|55.5|46.5|5.01|3.34",
         "nil|504|35|50.5|47.5|5.01|3.34",
         "nil|504|35|38.5|48.5|5.01|3.34",
         "nil|504|35|44|49|5.01|3.34",
         "nil|504|35|45|73|5.01|3.34",
         "nil|504|35|42|75.5|5.01|13.36",
         "nil|504|35|42|77.5|10.02|3.34",
         "nil|504|35|42|78|15.03|3.34",
         "nil|504|35|42|78.5|40.08|3.34",
         "nil|504|35|42|79|35.07|3.34",
         "nil|504|35|42|79.5|30.06|3.34",
         "nil|504|35|43|80|15.03|3.34",
       },
    },
  },
  [12959] = {
    Quest = [[Shipment: Glowing Ivory Figurine|0|0|65|0|36]],
    Start = "1556|504|32|40.37|35.1",
    End = "1556|504|32|40.38|35.16",
    Objectives = {
      [1] = {
         "nil|504|35|52.5|14.5|15.03|3.34",
         "nil|504|35|52|15|30.06|3.34",
         "nil|504|35|51.5|15.5|35.07|3.34",
         "nil|504|35|50.5|16|45.09|3.34",
         "nil|504|35|53|16.5|20.04|3.34",
         "nil|504|35|53.5|17|15.03|3.34",
         "nil|504|35|54|17.5|10.02|3.34",
         "nil|504|35|54.5|18|10.02|3.34",
         "nil|504|35|55|18.5|5.01|6.68",
         "nil|504|35|51|22.5|5.01|3.34",
         "nil|504|35|46|27|5.01|3.34",
         "nil|504|35|40.5|30|5.01|3.34",
         "nil|504|35|40|30.5|10.02|3.34",
         "nil|504|35|39.5|31|15.03|30.06",
         "nil|504|35|62|31.5|15.03|3.34",
         "nil|504|35|64.5|32|15.03|3.34",
         "nil|504|35|49|34|15.03|3.34",
         "nil|504|35|49.5|34.5|15.03|3.34",
         "nil|504|35|59|47.5|5.01|3.34",
         "nil|504|35|37|60.5|5.01|3.34",
         "nil|504|35|45.5|67.5|5.01|3.34",
         "nil|504|35|40|69.5|5.01|3.34",
         "nil|504|35|42|75.5|10.02|3.34",
         "nil|504|35|42|76|15.03|3.34",
         "nil|504|35|42|76.5|25.05|3.34",
         "nil|504|35|42|77|30.06|3.34",
         "nil|504|35|41.5|77.5|40.08|3.34",
         "nil|504|35|41.5|78|50.1|6.68",
         "nil|504|35|41.5|79|40.08|3.34",
         "nil|504|35|42|79.5|30.06|3.34",
         "nil|504|35|42.5|80|20.04|3.34",
       },
    },
  },
  [12960] = {
    Quest = [[Shipment: Wicked Sun Brooch|0|0|65|0|36]],
    Start = "1556|504|32|40.38|35.11",
    End = "1556|504|32|40.4|35.11",
    Objectives = {
      [1] = {
         "nil|504|35|52|14.5|25.05|3.34",
         "nil|504|35|52|15|30.06|6.68",
         "nil|504|35|51.5|16|35.07|3.34",
         "nil|504|35|51|16.5|40.08|3.34",
         "nil|504|35|50.5|17|40.08|3.34",
         "nil|504|35|50.5|17.5|35.07|3.34",
         "nil|504|35|51|18|25.05|3.34",
         "nil|504|35|51.5|18.5|20.04|10.02",
         "nil|504|35|51.5|20|15.03|3.34",
         "nil|504|35|47.5|30|5.01|3.34",
         "nil|504|35|62|31|5.01|3.34",
         "nil|504|35|40|31.5|10.02|20.04",
         "nil|504|35|39.5|34.5|15.03|3.34",
         "nil|504|35|39|35|20.04|3.34",
         "nil|504|35|38.5|35.5|15.03|3.34",
         "nil|504|35|37|56|5.01|3.34",
         "nil|504|35|45|56|5.01|20.04",
         "nil|504|35|37|60.5|5.01|3.34",
         "nil|504|35|42|77.5|20.04|3.34",
         "nil|504|35|41.5|78|25.05|6.68",
         "nil|504|35|41.5|79|30.06|3.34",
         "nil|504|35|42|79.5|25.05|3.34",
         "nil|504|35|42.5|80|20.04|3.34",
       },
    },
  },
  [12961] = {
    Quest = [[Shipment: Intricate Bone Figurine|0|0|65|0|36]],
    Start = "1556|504|32|40.38|35.12",
    End = "1556|504|32|40.4|35.13",
    Objectives = {
      [1] = {
         "nil|504|35|52|14.5|20.04|3.34",
         "nil|504|35|52|15|25.05|3.34",
         "nil|504|35|51.5|15.5|30.06|3.34",
         "nil|504|35|51|16|35.07|3.34",
         "nil|504|35|50.5|16.5|40.08|6.68",
         "nil|504|35|53.5|17.5|10.02|3.34",
         "nil|504|35|54|18|10.02|3.34",
         "nil|504|35|54.5|18.5|5.01|6.68",
         "nil|504|35|51|23.5|5.01|3.34",
         "nil|504|35|38.5|25|5.01|3.34",
         "nil|504|35|62|30.5|15.03|6.68",
         "nil|504|35|40|32|5.01|23.38",
         "nil|504|35|58.5|33|5.01|3.34",
         "nil|504|35|58|49|5.01|3.34",
         "nil|504|35|44|56|5.01|3.34",
         "nil|504|35|51|58.5|5.01|3.34",
         "nil|504|35|45|70.5|5.01|3.34",
         "nil|504|35|39.5|71|5.01|3.34",
         "nil|504|35|44|76|5.01|10.02",
         "nil|504|35|43.5|77.5|10.02|3.34",
         "nil|504|35|43|78|15.03|3.34",
         "nil|504|35|42|78.5|25.05|10.02",
         "nil|504|35|42.5|80|20.04|3.34",
         "nil|504|35|79|94|5.01|3.34",
       },
    },
  },
  [12962] = {
    Quest = [[Shipment: Bright Armor Relic|0|0|65|0|36]],
    Start = "1556|504|32|40.37|35.1",
    End = "1556|504|32|40.39|35.1",
    Objectives = {
      [1] = {
         "nil|504|35|52.5|14.5|15.03|3.34",
         "nil|504|35|52.5|15|25.05|23.38",
         "nil|504|35|53.5|18.5|15.03|3.34",
         "nil|504|35|54|19|10.02|3.34",
         "nil|504|35|51|28.5|5.01|3.34",
         "nil|504|35|62.5|31|5.01|6.68",
         "nil|504|35|39.5|32|5.01|10.02",
         "nil|504|35|40|34|5.01|3.34",
         "nil|504|35|40|34.5|10.02|6.68",
         "nil|504|35|67.5|35|5.01|3.34",
         "nil|504|35|42|41|5.01|3.34",
         "nil|504|35|71.5|45|5.01|3.34",
         "nil|504|35|40.5|47.5|5.01|3.34",
         "nil|504|35|45|55.5|5.01|3.34",
         "nil|504|35|38|59.5|5.01|3.34",
         "nil|504|35|44|75.5|5.01|10.02",
         "nil|504|35|43.5|77|10.02|3.34",
         "nil|504|35|43|77.5|20.04|3.34",
         "nil|504|35|42|78|35.07|3.34",
         "nil|504|35|42|78.5|45.09|3.34",
         "nil|504|35|42|79|35.07|3.34",
         "nil|504|35|42|79.5|30.06|3.34",
       },
    },
  },
  [12963] = {
    Quest = [[Shipment: Shifting Sun Curio |0|0|65|0|36]],
    Start = "1556|504|32|40.37|35.13",
    End = "1556|504|32|40.37|35.15",
    Objectives = {
      [1] = {
         "nil|504|35|52|14|15.03|3.34",
         "nil|504|35|52|14.5|20.04|3.34",
         "nil|504|35|51.5|15|30.06|3.34",
         "nil|504|35|51|15.5|35.07|3.34",
         "nil|504|35|50|16|45.09|6.68",
         "nil|504|35|54|17|5.01|3.34",
         "nil|504|35|54.5|17.5|5.01|3.34",
         "nil|504|35|55|18|5.01|6.68",
         "nil|504|35|51|23|5.01|6.68",
         "nil|504|35|39|25|5.01|3.34",
         "nil|504|35|52|25.5|5.01|6.68",
         "nil|504|35|50.5|28|5.01|3.34",
         "nil|504|35|40.5|29.5|15.03|6.68",
         "nil|504|35|40.5|30.5|10.02|3.34",
         "nil|504|35|40|31|10.02|20.04",
         "nil|504|35|62.5|31|15.03|3.34",
         "nil|504|35|62.5|31.5|20.04|3.34",
         "nil|504|35|65|32|15.03|3.34",
         "nil|504|35|39.5|34|15.03|10.02",
         "nil|504|35|44.5|58.5|5.01|3.34",
         "nil|504|35|36.5|60|5.01|3.34",
         "nil|504|35|47|64.5|5.01|6.68",
         "nil|504|35|46|66.5|5.01|6.68",
         "nil|504|35|45|73|5.01|3.34",
         "nil|504|35|45|78|15.03|3.34",
         "nil|504|35|67.5|78|5.01|3.34",
         "nil|504|35|42|78.5|45.09|3.34",
         "nil|504|35|42|79|35.07|3.34",
         "nil|504|35|42|79.5|30.06|3.34",
         "nil|504|35|42.5|80|20.04|3.34",
         "nil|504|35|43|80.5|15.03|3.34",
       },
    },
  },
  [13012] = {
    Quest = [[Sardis the Elder|0|0|1|0|29]],
  },
  [13013] = {
    Quest = [[Beldak the Elder|0|0|1|0|29]],
  },
  [13014] = {
    Quest = [[Morthie the Elder|0|0|1|0|29]],
  },
  [13015] = {
    Quest = [[Fargal the Elder|0|0|1|0|29]],
  },
  [13016] = {
    Quest = [[Northal the Elder|0|0|1|0|29]],
  },
  [13017] = {
    Quest = [[Jarten the Elder|0|0|1|0|29]],
  },
  [13018] = {
    Quest = [[Sandrene the Elder|0|0|1|0|29]],
  },
  [13019] = {
    Quest = [[Thoim the Elder|0|0|1|0|29]],
  },
  [13020] = {
    Quest = [[Stonebeard the Elder|0|0|1|0|29]],
  },
  [13021] = {
    Quest = [[Igasho the Elder|0|0|1|0|29]],
  },
  [13022] = {
    Quest = [[Nurgen the Elder|0|0|1|0|29]],
  },
  [13023] = {
    Quest = [[Kilias the Elder|0|0|1|0|29]],
  },
  [13024] = {
    Quest = [[Wanikaya the Elder|0|0|1|0|29]],
  },
  [13025] = {
    Quest = [[Lunaro the Elder|0|0|1|0|29]],
  },
  [13026] = {
    Quest = [[Bluewolf the Elder|0|0|1|0|29]],
  },
  [13027] = {
    Quest = [[Tauros the Elder|0|0|1|0|29]],
  },
  [13028] = {
    Quest = [[Graymane the Elder|0|0|1|0|29]],
  },
  [13029] = {
    Quest = [[Pamuya the Elder|0|0|1|0|29]],
  },
  [13030] = {
    Quest = [[Whurain the Elder|0|0|1|0|29]],
  },
  [13031] = {
    Quest = [[Skywarden the Elder|0|0|1|0|29]],
  },
  [13032] = {
    Quest = [[Muraco the Elder|0|0|1|0|29]],
  },
  [13033] = {
    Quest = [[Arp the Elder|0|0|1|0|29]],
  },
  [13041] = {
    Quest = [[Finish the Shipment|0|0|65|0|36]],
    Start = "1556|504|32|40.39|35.05",
    End = "1556|504|32|40.41|35.07",
    Objectives = {
      [1] = {
         "nil|504|35|39.5|31.5|15.03|6.68",
         "nil|504|35|37|59.5|5.01|10.02",
       },
    },
  },
  [13065] = {
    Quest = [[Ohanzee the Elder|0|0|1|0|29]],
  },
  [13066] = {
    Quest = [[Yurauk the Elder|0|0|1|0|29]],
  },
  [13067] = {
    Quest = [[Chogan'gada the Elder|0|0|1|0|29]],
  },
  [13087] = {
    Quest = [[Northern Cooking|1|0|65|0|5]],
    Start = "1582|491|32|58.22|62.07",
    End = "1582|491|32|58.22|62.08",
    Objectives = {
      [1] = {
         "nil|491|35|35.5|43.5|10.02|10.02",
         "nil|491|35|36|45|5.01|3.34",
         "nil|491|35|34.5|47.5|5.01|3.34",
         "nil|491|35|27|55|10.02|6.68",
         "nil|491|35|61|55.5|5.01|6.68",
         "nil|491|35|61|56.5|10.02|3.34",
         "nil|491|35|61.5|57|5.01|3.34",
         "nil|491|35|61.5|57.5|10.02|3.34",
         "nil|491|35|61.5|58|15.03|3.34",
         "nil|491|35|61|58.5|20.04|10.02",
         "nil|491|35|61.5|60|15.03|3.34",
         "nil|491|35|62|60.5|10.02|3.34",
         "nil|491|35|62.5|61|5.01|6.68",
         "nil|491|35|31|62|5.01|3.34",
         "nil|491|35|72|62.5|5.01|13.36",
         "nil|491|35|58.5|63|5.01|3.34",
         "nil|491|35|78.5|72|15.03|6.68",
         "nil|491|35|78.5|73|10.02|3.34",
         "nil|491|35|35|77|5.01|6.68",
         "nil|491|35|31|78|5.01|3.34",
       },
    },
  },
  [13088] = {
    Quest = [[Northern Cooking|1|0|65|0|5]],
    Start = "1583|486|32|57.86|71.51",
    End = "1583|486|32|57.86|71.5",
    Objectives = {
      [1] = {
         "nil|486|35|55|21|5.01|3.34",
         "nil|486|35|50|28|10.02|3.34",
         "nil|486|35|49.5|28.5|15.03|3.34",
         "nil|486|35|49.5|29|10.02|3.34",
         "nil|486|35|59.5|31.5|5.01|13.36",
         "nil|486|35|82|32|10.02|10.02",
         "nil|486|35|59|33.5|10.02|3.34",
         "nil|486|35|82.5|33.5|5.01|6.68",
         "nil|486|35|59|34|15.03|3.34",
         "nil|486|35|59|34.5|20.04|3.34",
         "nil|486|35|60.5|35|15.03|3.34",
         "nil|486|35|63|37|5.01|3.34",
         "nil|486|35|53|40.5|5.01|3.34",
         "nil|486|35|61.5|43|10.02|20.04",
         "nil|486|35|44.5|45|5.01|3.34",
         "nil|486|35|61|46|15.03|3.34",
         "nil|486|35|60.5|46.5|20.04|3.34",
         "nil|486|35|60|47|20.04|3.34",
         "nil|486|35|55.5|51.5|5.01|3.34",
         "nil|486|35|61.5|65.5|5.01|3.34",
         "nil|486|35|61|66|10.02|10.02",
         "nil|486|35|49.5|68|35.07|3.34",
         "nil|486|35|49|68.5|40.08|3.34",
         "nil|486|35|58.5|68.5|5.01|3.34",
         "nil|486|35|48.5|69|20.04|3.34",
         "nil|486|35|39|69.5|5.01|3.34",
         "nil|486|35|47.5|69.5|25.05|3.34",
         "nil|486|35|46.5|70|30.06|3.34",
         "nil|486|35|46|70.5|35.07|3.34",
         "nil|486|35|45.5|71|40.08|3.34",
         "nil|486|35|43.5|71.5|55.11|10.02",
         "nil|486|35|44|73|35.07|3.34",
         "nil|486|35|44|73.5|30.06|3.34",
       },
    },
  },
  [13089] = {
    Quest = [[Northern Cooking|2|0|65|0|5]],
    Start = "1584|491|32|78.63|29.44",
    End = "1584|491|32|78.63|29.46",
    Objectives = {
      [1] = {
         "nil|491|35|51|7|25.05|3.34",
         "nil|491|35|51|7.5|15.03|3.34",
         "nil|491|35|42.5|15|10.02|10.02",
         "nil|491|35|78.5|30|5.01|6.68",
         "nil|491|35|74.5|32|10.02|3.34",
         "nil|491|35|74.5|32.5|15.03|3.34",
         "nil|491|35|74|33|25.05|3.34",
         "nil|491|35|73.5|33.5|30.06|6.68",
         "nil|491|35|73.5|34.5|25.05|3.34",
         "nil|491|35|80.5|35|5.01|3.34",
         "nil|491|35|76|41.5|5.01|3.34",
         "nil|491|35|75.5|42|10.02|3.34",
         "nil|491|35|75.5|42.5|15.03|10.02",
         "nil|491|35|27|60.5|5.01|3.34",
         "nil|491|35|52.5|61|5.01|3.34",
         "nil|491|35|31|61.5|5.01|3.34",
         "nil|491|35|49.5|62.5|5.01|3.34",
       },
    },
  },
  [13090] = {
    Quest = [[Northern Cooking|2|0|65|0|5]],
    Start = "1585|486|32|41.94|54.18",
    End = "1585|486|32|41.94|54.18",
    Objectives = {
      [1] = {
         "nil|486|35|76.5|31.5|5.01|3.34",
         "nil|486|35|76.5|32|10.02|3.34",
         "nil|486|35|76.5|32.5|15.03|3.34",
         "nil|486|35|76.5|33|20.04|10.02",
         "nil|486|35|76.5|34.5|15.03|3.34",
         "nil|486|35|77|35|10.02|10.02",
         "nil|486|35|61.5|35.5|20.04|10.02",
         "nil|486|35|77|36.5|5.01|6.68",
         "nil|486|35|62|37|15.03|3.34",
         "nil|486|35|45|43|15.03|3.34",
         "nil|486|35|44|43.5|25.05|13.36",
         "nil|486|35|44|45.5|30.06|3.34",
         "nil|486|35|55.5|45.5|15.03|3.34",
         "nil|486|35|44|46|35.07|3.34",
         "nil|486|35|55.5|46|25.05|20.04",
         "nil|486|35|43.5|46.5|50.1|3.34",
         "nil|486|35|43|47|60.12|3.34",
         "nil|486|35|43|47.5|30.06|3.34",
         "nil|486|35|47.5|47.5|15.03|3.34",
         "nil|486|35|43|48|25.05|3.34",
         "nil|486|35|43.5|48.5|15.03|3.34",
         "nil|486|35|55.5|49|15.03|3.34",
         "nil|486|35|59|56.5|15.03|3.34",
         "nil|486|35|39.5|73|20.04|3.34",
         "nil|486|35|39|73.5|45.09|3.34",
         "nil|486|35|37.5|74|15.03|3.34",
       },
    },
  },
  [13100] = {
    Quest = [[Infused Mushroom Meatloaf|1|0|65|0|5]],
    Start = "1588|504|32|40.71|65.19",
    End = "1589|504|32|52|55.21",
    Objectives = {
      [1] = {
         "nil|504|35|52.5|14.5|10.02|6.68",
         "nil|504|35|52|15.5|15.03|3.34",
         "nil|504|35|51.5|16|5.01|3.34",
         "nil|504|35|50.5|16.5|10.02|3.34",
         "nil|504|35|51.5|35|5.01|3.34",
         "nil|504|35|44|38.5|5.01|3.34",
         "nil|504|35|71.5|42|5.01|3.34",
         "nil|504|35|37.5|43.5|10.02|3.34",
         "nil|504|35|57.5|43.5|5.01|3.34",
         "nil|504|35|37|44|20.04|3.34",
         "nil|504|35|36|44.5|35.07|3.34",
         "nil|504|35|36|45|40.08|3.34",
         "nil|504|35|39.5|45.5|5.01|3.34",
         "nil|504|35|51|46|5.01|3.34",
         "nil|504|35|59|46.5|5.01|3.34",
         "nil|504|35|40.5|47|5.01|6.68",
         "nil|504|35|58.5|47|10.02|10.02",
         "nil|504|35|65|48|5.01|3.34",
         "nil|504|35|58.5|48.5|5.01|3.34",
         "nil|504|35|57.5|50.5|5.01|3.34",
         "nil|504|35|57|51|10.02|3.34",
         "nil|504|35|56.5|51.5|10.02|3.34",
         "nil|504|35|56|52|10.02|3.34",
         "nil|504|35|55.5|52.5|5.01|3.34",
         "nil|504|35|55|53|5.01|3.34",
         "nil|504|35|50.5|53.5|15.03|3.34",
         "nil|504|35|53.5|53.5|15.03|3.34",
         "nil|504|35|50.5|54|30.06|3.34",
         "nil|504|35|50.5|54.5|25.05|3.34",
         "nil|504|35|50.5|55|20.04|10.02",
         "nil|504|35|44|56|5.01|6.68",
         "nil|504|35|50.5|56.5|25.05|3.34",
         "nil|504|35|44|57|10.02|3.34",
         "nil|504|35|50.5|57|30.06|3.34",
         "nil|504|35|44.5|57.5|10.02|3.34",
         "nil|504|35|50|57.5|35.07|3.34",
         "nil|504|35|44.5|58|15.03|3.34",
         "nil|504|35|49.5|58|35.07|3.34",
         "nil|504|35|46|58.5|65.13|3.34",
         "nil|504|35|46.5|59|55.11|3.34",
         "nil|504|35|47|59.5|50.1|3.34",
         "nil|504|35|49|60|30.06|3.34",
         "nil|504|35|49.5|60.5|25.05|3.34",
         "nil|504|35|50|61|15.03|3.34",
         "nil|504|35|50.5|61.5|5.01|10.02",
         "nil|504|35|50.5|63|10.02|3.34",
         "nil|504|35|51|63.5|10.02|3.34",
         "nil|504|35|51|64|15.03|3.34",
         "nil|504|35|51|64.5|20.04|3.34",
         "nil|504|35|50.5|65|15.03|3.34",
         "nil|504|35|46|65.5|10.02|6.68",
         "nil|504|35|50.5|65.5|10.02|3.34",
         "nil|504|35|40|66|5.01|6.68",
         "nil|504|35|50.5|66|5.01|3.34",
         "nil|504|35|46.5|66.5|5.01|3.34",
         "nil|504|35|47|67|5.01|3.34",
         "nil|504|35|47.5|67.5|5.01|6.68",
         "nil|504|35|44.5|75.5|15.03|3.34",
         "nil|504|35|44|76|20.04|3.34",
         "nil|504|35|43.5|76.5|25.05|3.34",
         "nil|504|35|42.5|77|40.08|3.34",
         "nil|504|35|42|77.5|45.09|6.68",
         "nil|504|35|42|78.5|25.05|3.34",
         "nil|504|35|42|79|20.04|3.34",
         "nil|504|35|42|79.5|15.03|3.34",
       },
    },
  },
  [13101] = {
    Quest = [[Convention at the Legerdemain|1|0|65|0|5]],
    Start = "1588|504|32|40.41|65.83",
    End = "1590|504|32|48.06|38.13",
    Objectives = {
      [1] = {
         "nil|504|35|52|34|5.01|3.34",
         "nil|504|35|46.5|39|10.02|6.68",
         "nil|504|35|40|65.5|10.02|10.02",
         "nil|504|35|42.5|78.5|10.02|10.02",
       },
      [2] = {
         "nil|504|35|54|30|20.04|6.68",
         "nil|504|35|53.5|31|25.05|3.34",
         "nil|504|35|53|31.5|30.06|3.34",
         "nil|504|35|53|32|25.05|3.34",
         "nil|504|35|53|32.5|20.04|13.36",
         "nil|504|35|53|34.5|15.03|3.34",
         "nil|504|35|53|35|10.02|3.34",
       },
    },
  },
  [13102] = {
    Quest = [[Sewer Stew|1|0|65|0|5]],
    Start = "1588|504|32|40.73|65.19",
    Objectives = {
      [1] = {
         "nil|504|35|52.5|15|10.02|3.34",
         "nil|504|35|52.5|15.5|15.03|3.34",
         "nil|504|35|52.5|16|20.04|3.34",
         "nil|504|35|52.5|16.5|15.03|3.34",
         "nil|504|35|52.5|17|10.02|3.34",
         "nil|504|35|52.5|17.5|5.01|6.68",
         "nil|504|35|52|27|5.01|3.34",
         "nil|504|35|40.5|30|5.01|3.34",
         "nil|504|35|40|30.5|10.02|6.68",
         "nil|504|35|40|31.5|5.01|6.68",
         "nil|504|35|52.5|35.5|5.01|3.34",
         "nil|504|35|46.5|39|5.01|3.34",
         "nil|504|35|55.5|46.5|35.07|3.34",
         "nil|504|35|39|47|5.01|3.34",
         "nil|504|35|51|47|10.02|3.34",
         "nil|504|35|50.5|47.5|15.03|3.34",
         "nil|504|35|50|48|20.04|3.34",
         "nil|504|35|50|48.5|15.03|6.68",
         "nil|504|35|57|51.5|5.01|3.34",
         "nil|504|35|45|57|15.03|10.02",
         "nil|504|35|37|60|5.01|3.34",
         "nil|504|35|48|60|5.01|3.34",
         "nil|504|35|50.5|62|5.01|6.68",
         "nil|504|35|50|63|10.02|3.34",
         "nil|504|35|49.5|63.5|10.02|3.34",
         "nil|504|35|47.5|64|30.06|3.34",
         "nil|504|35|49|64.5|15.03|3.34",
         "nil|504|35|49.5|65|10.02|3.34",
         "nil|504|35|40|65.5|10.02|10.02",
         "nil|504|35|46|68|15.03|3.34",
         "nil|504|35|45.5|68.5|15.03|3.34",
         "nil|504|35|42.5|74.5|10.02|3.34",
         "nil|504|35|42.5|75|15.03|3.34",
         "nil|504|35|42.5|75.5|25.05|3.34",
         "nil|504|35|42.5|76|30.06|3.34",
         "nil|504|35|42.5|76.5|35.07|3.34",
         "nil|504|35|42|77|40.08|6.68",
         "nil|504|35|42|78|35.07|3.34",
         "nil|504|35|42|78.5|30.06|3.34",
         "nil|504|35|42|79|25.05|3.34",
         "nil|504|35|42.5|79.5|20.04|3.34",
       },
    },
  },
  [13103] = {
    Quest = [[Cheese for Glowergold|1|0|65|0|5]],
    Start = "1588|504|32|40.7|65.2",
    End = "1591|504|32|36.39|28.29",
    Objectives = {
      [1] = {
         "nil|504|35|36|28|5.01|10.02",
         "nil|504|35|55|30.5|10.02|3.34",
         "nil|504|35|54.5|31|15.03|3.34",
         "nil|504|35|53|31.5|25.05|3.34",
         "nil|504|35|53|32|20.04|3.34",
         "nil|504|35|52.5|32.5|25.05|3.34",
         "nil|504|35|52|33|30.06|6.68",
         "nil|504|35|52|34|25.05|3.34",
         "nil|504|35|52|34.5|20.04|3.34",
         "nil|504|35|52|35|15.03|3.34",
         "nil|504|35|46.5|37.5|20.04|3.34",
         "nil|504|35|46.5|38|40.08|10.02",
         "nil|504|35|46.5|39.5|35.07|3.34",
         "nil|504|35|48|40|20.04|3.34",
       },
    },
  },
  [13107] = {
    Quest = [[Mustard Dogs!|1|0|65|0|5]],
    Start = "1588|504|32|40.41|65.86",
    End = "1424|504|32|68.28|42.07",
    Objectives = {
      [1] = {
         "nil|504|35|48.5|13.5|5.01|33.4",
         "nil|504|35|53|15.5|15.03|6.68",
         "nil|504|35|53.5|16.5|10.02|3.34",
         "nil|504|35|54|17|5.01|16.7",
         "nil|504|35|48|19|5.01|16.7",
         "nil|504|35|43|21|5.01|3.34",
         "nil|504|35|47.5|22|5.01|3.34",
         "nil|504|35|47|22.5|10.02|3.34",
         "nil|504|35|46|23|20.04|3.34",
         "nil|504|35|44.5|23.5|35.07|3.34",
         "nil|504|35|46|24|20.04|3.34",
         "nil|504|35|46.5|24.5|20.04|3.34",
         "nil|504|35|47|25|15.03|3.34",
         "nil|504|35|47.5|25.5|10.02|3.34",
         "nil|504|35|49.5|31|5.01|3.34",
         "nil|504|35|40|32|10.02|3.34",
         "nil|504|35|33|35.5|15.03|3.34",
         "nil|504|35|33|36|20.04|10.02",
         "nil|504|35|33.5|37.5|15.03|3.34",
         "nil|504|35|38.5|37.5|5.01|3.34",
         "nil|504|35|33.5|38|20.04|3.34",
         "nil|504|35|33.5|38.5|25.05|3.34",
         "nil|504|35|47|38.5|5.01|3.34",
         "nil|504|35|33.5|39|30.06|10.02",
         "nil|504|35|67.5|40|10.02|3.34",
         "nil|504|35|34|40.5|25.05|3.34",
         "nil|504|35|43.5|40.5|5.01|3.34",
         "nil|504|35|67.5|40.5|15.03|3.34",
         "nil|504|35|34.5|41|20.04|3.34",
         "nil|504|35|67.5|41|25.05|3.34",
         "nil|504|35|34.5|41.5|25.05|3.34",
         "nil|504|35|67.5|41.5|30.06|10.02",
         "nil|504|35|34.5|42|30.06|3.34",
         "nil|504|35|34.5|42.5|35.07|3.34",
         "nil|504|35|34.5|43|45.09|3.34",
         "nil|504|35|67.5|43|35.07|3.34",
         "nil|504|35|35.5|43.5|50.1|3.34",
         "nil|504|35|68|43.5|30.06|3.34",
         "nil|504|35|36|44|45.09|3.34",
         "nil|504|35|47.5|44|30.06|6.68",
         "nil|504|35|68|44|25.05|3.34",
         "nil|504|35|73.5|44|5.01|3.34",
         "nil|504|35|36.5|44.5|40.08|3.34",
         "nil|504|35|69.5|44.5|10.02|3.34",
         "nil|504|35|36.5|45|35.07|10.02",
         "nil|504|35|47.5|45|35.07|3.34",
         "nil|504|35|70|45|10.02|3.34",
         "nil|504|35|47.5|45.5|40.08|3.34",
         "nil|504|35|70.5|45.5|5.01|6.68",
         "nil|504|35|47|46|50.1|10.02",
         "nil|504|35|65.5|46|5.01|3.34",
         "nil|504|35|36.5|46.5|40.08|10.02",
         "nil|504|35|47.5|47.5|45.09|3.34",
         "nil|504|35|40|48|5.01|3.34",
         "nil|504|35|48|48|35.07|3.34",
         "nil|504|35|67.5|48|5.01|3.34",
         "nil|504|35|48.5|48.5|25.05|3.34",
         "nil|504|35|48.5|49|20.04|6.68",
         "nil|504|35|41|49.5|5.01|10.02",
         "nil|504|35|49|50|15.03|3.34",
         "nil|504|35|49.5|50.5|10.02|3.34",
         "nil|504|35|40.5|51|10.02|3.34",
         "nil|504|35|35.5|51.5|15.03|3.34",
         "nil|504|35|40|51.5|15.03|3.34",
         "nil|504|35|35.5|52|65.13|3.34",
         "nil|504|35|35|52.5|75.15|3.34",
         "nil|504|35|34.5|53|20.04|3.34",
         "nil|504|35|41|53|15.03|3.34",
         "nil|504|35|54.5|53|5.01|3.34",
         "nil|504|35|34|53.5|20.04|3.34",
         "nil|504|35|42|53.5|5.01|3.34",
         "nil|504|35|54.5|53.5|10.02|3.34",
         "nil|504|35|34|54|15.03|10.02",
         "nil|504|35|42.5|54|5.01|3.34",
         "nil|504|35|55|54|10.02|3.34",
         "nil|504|35|43|54.5|5.01|3.34",
         "nil|504|35|55.5|54.5|5.01|3.34",
         "nil|504|35|43|55|15.03|6.68",
         "nil|504|35|33.5|55.5|20.04|3.34",
         "nil|504|35|33|56|25.05|3.34",
         "nil|504|35|43|56|20.04|3.34",
         "nil|504|35|33|56.5|20.04|3.34",
         "nil|504|35|43|56.5|25.05|3.34",
         "nil|504|35|33|57|15.03|13.36",
         "nil|504|35|44.5|57|20.04|3.34",
         "nil|504|35|45|57.5|20.04|3.34",
         "nil|504|35|45.5|58|15.03|6.68",
         "nil|504|35|32.5|59|20.04|3.34",
         "nil|504|35|45.5|59|20.04|3.34",
         "nil|504|35|51|59|10.02|3.34",
         "nil|504|35|32.5|59.5|15.03|3.34",
         "nil|504|35|32.5|60|10.02|3.34",
         "nil|504|35|48.5|60|15.03|3.34",
         "nil|504|35|42.5|64|5.01|3.34",
         "nil|504|35|47.5|64|5.01|3.34",
         "nil|504|35|52.5|64.5|5.01|3.34",
         "nil|504|35|40|65.5|10.02|10.02",
         "nil|504|35|46|66.5|5.01|13.36",
         "nil|504|35|45.5|68.5|10.02|3.34",
         "nil|504|35|45.5|69|5.01|6.68",
         "nil|504|35|45|70|10.02|6.68",
         "nil|504|35|45|71|5.01|10.02",
         "nil|504|35|44.5|73.5|5.01|3.34",
         "nil|504|35|37|74|5.01|3.34",
         "nil|504|35|44.5|74|10.02|3.34",
         "nil|504|35|44|74.5|15.03|3.34",
         "nil|504|35|43.5|75|20.04|3.34",
         "nil|504|35|42|75.5|35.07|13.36",
         "nil|504|35|42|77.5|40.08|3.34",
         "nil|504|35|42|78|45.09|6.68",
         "nil|504|35|42|79|35.07|3.34",
         "nil|504|35|42|79.5|30.06|3.34",
       },
    },
  },
  [13112] = {
    Quest = [[Infused Mushroom Meatloaf|2|0|65|0|5]],
    Start = "1594|504|32|70.01|38.58",
    End = "1589|504|32|52.03|55.23",
    Objectives = {
      [1] = {
         "nil|504|35|52|14.5|20.04|3.34",
         "nil|504|35|52|15|25.05|16.7",
         "nil|504|35|53|17.5|15.03|3.34",
         "nil|504|35|53.5|18|15.03|3.34",
         "nil|504|35|54|18.5|15.03|6.68",
         "nil|504|35|51|22|10.02|13.36",
         "nil|504|35|50.5|24|10.02|3.34",
         "nil|504|35|58|24|5.01|3.34",
         "nil|504|35|50.5|24.5|5.01|10.02",
         "nil|504|35|50.5|26|10.02|3.34",
         "nil|504|35|50.5|26.5|15.03|3.34",
         "nil|504|35|50.5|27|20.04|3.34",
         "nil|504|35|61.5|28|5.01|6.68",
         "nil|504|35|41|29|10.02|3.34",
         "nil|504|35|68|29|10.02|3.34",
         "nil|504|35|40.5|29.5|15.03|3.34",
         "nil|504|35|67.5|29.5|15.03|3.34",
         "nil|504|35|40|30|15.03|3.34",
         "nil|504|35|67|30|20.04|3.34",
         "nil|504|35|39.5|30.5|15.03|3.34",
         "nil|504|35|65.5|30.5|35.07|3.34",
         "nil|504|35|39.5|31|10.02|6.68",
         "nil|504|35|62.5|31|5.01|3.34",
         "nil|504|35|65|31|45.09|3.34",
         "nil|504|35|62.5|31.5|75.15|3.34",
         "nil|504|35|40|32|5.01|3.34",
         "nil|504|35|63.5|32|70.14|3.34",
         "nil|504|35|64|32.5|45.09|3.34",
         "nil|504|35|53.5|33|5.01|3.34",
         "nil|504|35|64.5|33|30.06|3.34",
         "nil|504|35|49.5|35|10.02|3.34",
         "nil|504|35|49.5|35.5|15.03|3.34",
         "nil|504|35|44.5|36|5.01|13.36",
         "nil|504|35|49.5|36|20.04|3.34",
         "nil|504|35|52.5|36|5.01|3.34",
         "nil|504|35|51|36.5|25.05|3.34",
         "nil|504|35|53|37|15.03|3.34",
         "nil|504|35|44.5|38|10.02|3.34",
         "nil|504|35|45.5|38.5|5.01|3.34",
         "nil|504|35|46|39|10.02|3.34",
         "nil|504|35|70|39|5.01|6.68",
         "nil|504|35|46.5|39.5|5.01|3.34",
         "nil|504|35|56.5|41.5|5.01|3.34",
         "nil|504|35|36.5|44.5|15.03|3.34",
         "nil|504|35|37|45|25.05|3.34",
         "nil|504|35|38|45.5|15.03|3.34",
         "nil|504|35|59|45.5|5.01|3.34",
         "nil|504|35|58.5|46|10.02|6.68",
         "nil|504|35|58.5|47|5.01|6.68",
         "nil|504|35|42.5|52|10.02|10.02",
         "nil|504|35|42|53.5|5.01|3.34",
         "nil|504|35|41.5|54|5.01|3.34",
         "nil|504|35|41|54.5|5.01|3.34",
         "nil|504|35|51.5|54.5|10.02|6.68",
         "nil|504|35|51|55.5|10.02|3.34",
         "nil|504|35|50.5|56|10.02|3.34",
         "nil|504|35|50.5|56.5|5.01|3.34",
         "nil|504|35|46.5|57|5.01|3.34",
         "nil|504|35|54.5|57.5|5.01|3.34",
         "nil|504|35|51.5|63.5|5.01|3.34",
         "nil|504|35|44.5|72|10.02|10.02",
         "nil|504|35|44.5|73.5|5.01|3.34",
         "nil|504|35|43.5|76|5.01|3.34",
         "nil|504|35|43.5|76.5|10.02|3.34",
         "nil|504|35|43.5|77|15.03|3.34",
         "nil|504|35|43.5|77.5|20.04|6.68",
         "nil|504|35|43.5|78.5|15.03|3.34",
         "nil|504|35|43.5|79|10.02|3.34",
         "nil|504|35|67|79|5.01|3.34",
         "nil|504|35|44|79.5|5.01|3.34",
       },
    },
  },
  [13113] = {
    Quest = [[Convention at the Legerdemain|2|0|65|0|5]],
    Start = "1594|504|32|70.01|38.61",
    End = "1590|504|32|48.11|38.12",
    Objectives = {
      [1] = {
         "nil|504|35|52.5|15|15.03|3.34",
         "nil|504|35|52|15.5|20.04|3.34",
         "nil|504|35|51.5|16|25.05|3.34",
         "nil|504|35|50.5|16.5|15.03|3.34",
         "nil|504|35|68|29.5|5.01|3.34",
         "nil|504|35|58.5|32|5.01|3.34",
         "nil|504|35|64.5|32.5|5.01|3.34",
         "nil|504|35|51.5|34.5|10.02|3.34",
         "nil|504|35|51|35|15.03|3.34",
         "nil|504|35|50.5|35.5|20.04|3.34",
         "nil|504|35|50.5|36|15.03|3.34",
         "nil|504|35|48|38|10.02|3.34",
         "nil|504|35|70|38|5.01|13.36",
         "nil|504|35|47.5|38.5|10.02|3.34",
         "nil|504|35|46.5|39|15.03|3.34",
         "nil|504|35|46.5|39.5|10.02|3.34",
       },
      [2] = {
         "nil|504|35|54|29.5|15.03|3.34",
         "nil|504|35|54|30|20.04|3.34",
         "nil|504|35|54|30.5|25.05|3.34",
         "nil|504|35|53.5|31|30.06|3.34",
         "nil|504|35|53|31.5|30.06|3.34",
         "nil|504|35|53|32|25.05|3.34",
         "nil|504|35|53|32.5|20.04|13.36",
         "nil|504|35|53|34.5|15.03|3.34",
         "nil|504|35|53|35|10.02|3.34",
       },
    },
  },
  [13114] = {
    Quest = [[Sewer Stew|2|0|65|0|5]],
    Start = "1594|504|32|70.02|38.63",
    Objectives = {
      [1] = {
         "nil|504|35|52|15|25.05|13.36",
         "nil|504|35|52|17|20.04|3.34",
         "nil|504|35|52|17.5|15.03|3.34",
         "nil|504|35|52|18|10.02|3.34",
         "nil|504|35|52|18.5|5.01|16.7",
         "nil|504|35|51.5|21.5|5.01|3.34",
         "nil|504|35|51|22|10.02|3.34",
         "nil|504|35|51|22.5|15.03|6.68",
         "nil|504|35|51.5|23.5|10.02|3.34",
         "nil|504|35|49.5|26.5|5.01|3.34",
         "nil|504|35|68|29|5.01|3.34",
         "nil|504|35|67.5|29.5|10.02|3.34",
         "nil|504|35|67|30|10.02|3.34",
         "nil|504|35|65.5|30.5|20.04|3.34",
         "nil|504|35|65|31|25.05|3.34",
         "nil|504|35|61.5|31.5|60.12|3.34",
         "nil|504|35|60|32|75.15|3.34",
         "nil|504|35|60|32.5|55.11|3.34",
         "nil|504|35|50|35|10.02|13.36",
         "nil|504|35|50|37|5.01|6.68",
         "nil|504|35|49.5|38|10.02|3.34",
         "nil|504|35|49|38.5|20.04|3.34",
         "nil|504|35|70|38.5|5.01|10.02",
         "nil|504|35|46.5|39|15.03|3.34",
         "nil|504|35|46.5|39.5|10.02|3.34",
         "nil|504|35|52.5|39.5|15.03|3.34",
         "nil|504|35|58.5|45|5.01|3.34",
         "nil|504|35|61|61|5.01|3.34",
         "nil|504|35|52|65.5|5.01|3.34",
         "nil|504|35|45|66|5.01|10.02",
         "nil|504|35|45.5|67.5|5.01|10.02",
         "nil|504|35|45.5|72.5|5.01|3.34",
         "nil|504|35|43.5|76.5|5.01|10.02",
         "nil|504|35|43|78|5.01|10.02",
       },
    },
  },
  [13115] = {
    Quest = [[Cheese for Glowergold|2|0|65|0|5]],
    Start = "1594|504|32|70.02|38.63",
    End = "1591|504|32|36.39|28.3",
    Objectives = {
      [1] = {
         "nil|504|35|36|28|10.02|3.34",
         "nil|504|35|36|28.5|15.03|3.34",
         "nil|504|35|37|29|10.02|3.34",
         "nil|504|35|37.5|29.5|10.02|3.34",
         "nil|504|35|53|31.5|25.05|10.02",
         "nil|504|35|52.5|33|25.05|3.34",
         "nil|504|35|52|33.5|30.06|3.34",
         "nil|504|35|52|34|20.04|3.34",
         "nil|504|35|52|34.5|15.03|3.34",
         "nil|504|35|52|35|10.02|10.02",
         "nil|504|35|51.5|36.5|10.02|3.34",
         "nil|504|35|51|37|15.03|3.34",
         "nil|504|35|47.5|37.5|40.08|3.34",
         "nil|504|35|47|38|40.08|3.34",
         "nil|504|35|47|38.5|35.07|10.02",
         "nil|504|35|47|40|25.05|3.34",
       },
    },
  },
  [13116] = {
    Quest = [[Mustard Dogs!|2|0|65|0|5]],
    Start = "1594|504|32|70.01|38.6",
    End = "1424|504|32|68.29|42.08",
    Objectives = {
      [1] = {
         "nil|504|35|55|9.5|5.01|3.34",
         "nil|504|35|48|13.5|10.02|3.34",
         "nil|504|35|47.5|14|15.03|3.34",
         "nil|504|35|46.5|14.5|25.05|6.68",
         "nil|504|35|52.5|14.5|15.03|3.34",
         "nil|504|35|52.5|15|20.04|3.34",
         "nil|504|35|46|15.5|30.06|3.34",
         "nil|504|35|52.5|15.5|25.05|3.34",
         "nil|504|35|46|16|35.07|3.34",
         "nil|504|35|52|16|30.06|3.34",
         "nil|504|35|46|16.5|40.08|3.34",
         "nil|504|35|51.5|16.5|35.07|3.34",
         "nil|504|35|47|17|80.16|3.34",
         "nil|504|35|47.5|17.5|20.04|3.34",
         "nil|504|35|51.5|17.5|40.08|3.34",
         "nil|504|35|52|18|35.07|3.34",
         "nil|504|35|52.5|18.5|30.06|10.02",
         "nil|504|35|52.5|20|5.01|3.34",
         "nil|504|35|52|20.5|5.01|3.34",
         "nil|504|35|43|21|5.01|3.34",
         "nil|504|35|51.5|21|5.01|16.7",
         "nil|504|35|46.5|23|15.03|6.68",
         "nil|504|35|51.5|23.5|10.02|3.34",
         "nil|504|35|47.5|24|10.02|3.34",
         "nil|504|35|51|24|15.03|3.34",
         "nil|504|35|48|24.5|10.02|3.34",
         "nil|504|35|50.5|24.5|20.04|3.34",
         "nil|504|35|48.5|25|35.07|3.34",
         "nil|504|35|48.5|25.5|30.06|3.34",
         "nil|504|35|48.5|26|25.05|3.34",
         "nil|504|35|48.5|26.5|15.03|3.34",
         "nil|504|35|48.5|27|10.02|3.34",
         "nil|504|35|48.5|27.5|5.01|3.34",
         "nil|504|35|68|29|5.01|3.34",
         "nil|504|35|67.5|29.5|10.02|3.34",
         "nil|504|35|38.5|30|5.01|3.34",
         "nil|504|35|67|30|15.03|3.34",
         "nil|504|35|39|30.5|5.01|3.34",
         "nil|504|35|66|30.5|25.05|3.34",
         "nil|504|35|39.5|31|5.01|3.34",
         "nil|504|35|66|31|20.04|3.34",
         "nil|504|35|40|31.5|5.01|6.68",
         "nil|504|35|66.5|31.5|15.03|3.34",
         "nil|504|35|67|32|10.02|3.34",
         "nil|504|35|60.5|32.5|15.03|6.68",
         "nil|504|35|47|33|5.01|3.34",
         "nil|504|35|54.5|33.5|5.01|3.34",
         "nil|504|35|32.5|35.5|15.03|10.02",
         "nil|504|35|33|37|10.02|3.34",
         "nil|504|35|46.5|37|5.01|16.7",
         "nil|504|35|33.5|37.5|5.01|3.34",
         "nil|504|35|53|37.5|5.01|3.34",
         "nil|504|35|33.5|38|10.02|3.34",
         "nil|504|35|33.5|38.5|15.03|3.34",
         "nil|504|35|33.5|39|20.04|3.34",
         "nil|504|35|69.5|39|15.03|3.34",
         "nil|504|35|33.5|39.5|30.06|6.68",
         "nil|504|35|69|39.5|20.04|3.34",
         "nil|504|35|67|40|40.08|3.34",
         "nil|504|35|34|40.5|30.06|3.34",
         "nil|504|35|67|40.5|45.09|3.34",
         "nil|504|35|34.5|41|25.05|6.68",
         "nil|504|35|67|41|50.1|6.68",
         "nil|504|35|34.5|42|30.06|3.34",
         "nil|504|35|66.5|42|55.11|10.02",
         "nil|504|35|34.5|42.5|35.07|3.34",
         "nil|504|35|35.5|43|25.05|3.34",
         "nil|504|35|36|43.5|20.04|3.34",
         "nil|504|35|70|43.5|20.04|3.34",
         "nil|504|35|36.5|44|15.03|3.34",
         "nil|504|35|48|44|20.04|10.02",
         "nil|504|35|70.5|44|20.04|3.34",
         "nil|504|35|36.5|44.5|20.04|3.34",
         "nil|504|35|71|44.5|15.03|6.68",
         "nil|504|35|36.5|45|25.05|3.34",
         "nil|504|35|36.5|45.5|45.09|6.68",
         "nil|504|35|48|45.5|25.05|3.34",
         "nil|504|35|47.5|46|35.07|3.34",
         "nil|504|35|36.5|46.5|40.08|3.34",
         "nil|504|35|47|46.5|50.1|3.34",
         "nil|504|35|36.5|47|35.07|6.68",
         "nil|504|35|47|47|45.09|3.34",
         "nil|504|35|47.5|47.5|35.07|3.34",
         "nil|504|35|38.5|48|15.03|3.34",
         "nil|504|35|48|48|25.05|3.34",
         "nil|504|35|39|48.5|10.02|3.34",
         "nil|504|35|48.5|48.5|20.04|10.02",
         "nil|504|35|39.5|49|5.01|13.36",
         "nil|504|35|71|49|5.01|3.34",
         "nil|504|35|49|50|15.03|3.34",
         "nil|504|35|39.5|51|10.02|6.68",
         "nil|504|35|39|52|15.03|3.34",
         "nil|504|35|35|52.5|20.04|3.34",
         "nil|504|35|34.5|53|30.06|3.34",
         "nil|504|35|34|53.5|30.06|3.34",
         "nil|504|35|34|54|25.05|3.34",
         "nil|504|35|34|54.5|10.02|3.34",
         "nil|504|35|42.5|54.5|20.04|3.34",
         "nil|504|35|34|55|5.01|3.34",
         "nil|504|35|33.5|55.5|5.01|10.02",
         "nil|504|35|33.5|57|10.02|13.36",
         "nil|504|35|33|59|10.02|3.34",
         "nil|504|35|32.5|59.5|10.02|3.34",
         "nil|504|35|32.5|60|5.01|3.34",
         "nil|504|35|51|61|5.01|10.02",
         "nil|504|35|51.5|63|5.01|3.34",
         "nil|504|35|51.5|63.5|10.02|3.34",
         "nil|504|35|51.5|64|15.03|6.68",
         "nil|504|35|44.5|72.5|10.02|10.02",
         "nil|504|35|43|75.5|5.01|3.34",
         "nil|504|35|44.5|79.5|5.01|3.34",
       },
    },
  },
  [13148] = {
    Quest = [[Necklace Repair|0|0|77|0|36]],
    End = "1556|504|32|40.41|35.08",
    Objectives = {
      [1] = {
         "nil|504|35|52.5|14.5|5.01|3.34",
         "nil|504|35|53|15|5.01|3.34",
         "nil|504|35|53.5|15.5|5.01|3.34",
         "nil|504|35|54|16|5.01|3.34",
         "nil|504|35|51.5|22.5|5.01|3.34",
         "nil|504|35|39.5|32|10.02|10.02",
         "nil|504|35|40|33.5|5.01|13.36",
         "nil|504|35|37.5|60|5.01|3.34",
         "nil|504|35|42|78.5|15.03|3.34",
         "nil|504|35|42|79|30.06|3.34",
         "nil|504|35|43|79.5|20.04|3.34",
         "nil|504|35|43.5|80|15.03|3.34",
       },
    },
  },
  [13203] = {
    Quest = [[A Winter Veil Gift|0|0|10|0|15]],
  },
  [13265] = {
    Quest = [[Cloth Scavenging|0|0|0|0|21]],
  },
  [13268] = {
    Quest = [[Cloth Scavenging|0|0|0|0|21]],
  },
  [13269] = {
    Quest = [[Cloth Scavenging|0|0|0|0|21]],
  },
  [13270] = {
    Quest = [[Cloth Scavenging|0|0|0|0|21]],
  },
  [13272] = {
    Quest = [[Cloth Scavenging|0|0|0|0|21]],
  },
  [13433] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [13434] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [13435] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [13436] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [13437] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [13438] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [13439] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [13440] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [13441] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [13442] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [13443] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [13444] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [13445] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [13446] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [13447] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [13448] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [13449] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [13450] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [13451] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [13452] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [13453] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [13454] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [13455] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [13456] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [13457] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [13458] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [13459] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [13460] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [13461] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [13462] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [13463] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [13464] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [13465] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [13466] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [13467] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [13468] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [13469] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [13470] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [13471] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [13472] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [13473] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [13474] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [13476] = {
    Quest = [[For Great Honor|0|0|71|0|26]],
  },
  [13478] = {
    Quest = [[Concerted Efforts|0|0|71|0|26]],
  },
  [13479] = {
    Quest = [[The Great Egg Hunt|2|0|1|0|37]],
    Start = "1652|4|32|51.86|42.05",
    End = "1652|4|32|51.85|42.1",
    Objectives = {
      [1] = {
         "nil|4|35|51.5|40.5|25.05|3.34",
         "nil|4|35|50.5|41|50.1|13.36",
         "nil|4|35|50.5|43|45.09|3.34",
         "nil|4|35|51|43.5|35.07|3.34",
       },
    },
  },
  [13480] = {
    Quest = [[The Great Egg Hunt|1|0|1|0|37]],
    Start = "1653|30|32|42.92|65.3",
    Objectives = {
      [1] = {
         "nil|30|35|40.5|62|5.01|3.34",
         "nil|30|35|40.5|62.5|10.02|3.34",
         "nil|30|35|40.5|63|15.03|3.34",
         "nil|30|35|40|63.5|25.05|3.34",
         "nil|30|35|40|64|30.06|3.34",
         "nil|30|35|40|64.5|35.07|3.34",
         "nil|30|35|40|65|50.1|13.36",
         "nil|30|35|40.5|67|30.06|3.34",
         "nil|30|35|41|67.5|20.04|3.34",
       },
    },
  },
  [13483] = {
    Quest = [[Spring Gatherers|2|0|1|13479|37]],
    Start = "1654|321|32|51.55|75.3",
    End = "1652|4|32|51.87|42.04",
  },
  [13484] = {
    Quest = [[Spring Collectors|1|0|1|13480|37]],
    Start = "1243|301|32|61.68|74.06",
    End = "1653|30|32|42.91|65.33",
  },
  [13485] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [13486] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [13487] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [13488] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [13489] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [13490] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [13491] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [13492] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [13493] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [13494] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [13495] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [13496] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [13497] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [13498] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [13499] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [13500] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [13501] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [13502] = {
    Quest = [[A Tisket, a Tasket, a Noblegarden Basket|1|0|1|0|37]],
    Start = "1655|30|32|42.94|65.29",
    Objectives = {
      [1] = {
         "nil|30|35|40.5|62|5.01|3.34",
         "nil|30|35|40.5|62.5|10.02|6.68",
         "nil|30|35|41|63.5|10.02|3.34",
         "nil|30|35|41|64|15.03|3.34",
         "nil|30|35|41|64.5|35.07|6.68",
         "nil|30|35|40.5|65.5|40.08|3.34",
         "nil|30|35|40|66|45.09|6.68",
         "nil|30|35|40.5|67|30.06|3.34",
         "nil|30|35|41|67.5|20.04|3.34",
       },
    },
  },
  [13503] = {
    Quest = [[A Tisket, a Tasket, a Noblegarden Basket|2|0|1|0|37]],
    Start = "1656|4|32|51.91|41.92",
    End = "1656|4|32|51.88|41.88",
    Objectives = {
      [1] = {
         "nil|4|35|51|40|20.04|3.34",
         "nil|4|35|50.5|40.5|35.07|3.34",
         "nil|4|35|50.5|41|45.09|16.7",
         "nil|4|35|51|43.5|35.07|3.34",
       },
    },
  },
  [13548] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [13571] = {
    Quest = [[Fletcher's Lost and Found|0|80|0|0|5]],
  },
  [13825] = {
    Quest = [[Clamlette Surprise|0|0|0|0|5]],
  },
  [13826] = {
    Quest = [[Nat Pagle, Angler Extreme|0|0|0|0|12]],
  },
  [13830] = {
    Quest = [[The Ghostfish|0|0|70|0|12]],
    Start = "1772|504|32|52.72|64.75",
    End = "1772|504|32|52.78|64.77",
    Objectives = {
      [1] = {
         "nil|493|35|47.5|60.5|20.04|3.34",
         "nil|493|35|47|61|30.06|3.34",
         "nil|493|35|47|61.5|35.07|3.34",
         "nil|493|35|46.5|62|40.08|13.36",
         "nil|493|35|46.5|64|35.07|6.68",
         "nil|493|35|47|65|30.06|3.34",
         "nil|493|35|47.5|65.5|20.04|3.34",
         "nil|493|35|71|65.5|5.01|3.34",
         "nil|493|35|47.5|66|15.03|6.68",
       },
    },
  },
  [13832] = {
    Quest = [[Jewel Of The Sewers|0|0|70|0|12]],
    Start = "1772|504|32|52.72|64.75",
    End = "1772|504|32|52.72|64.71",
    Objectives = {
      [1] = {
         "nil|504|35|53.5|68|5.01|3.34",
       },
    },
  },
  [13833] = {
    Quest = [[Blood Is Thicker|0|0|70|0|12]],
    Start = "1772|504|32|52.72|64.76",
    End = "1772|504|32|52.74|64.75",
    Objectives = {
      [1] = {
         "nil|486|35|52|41.5|20.04|13.36",
         "nil|486|35|52.5|43.5|15.03|16.7",
         "nil|486|35|72.5|45.5|5.01|3.34",
         "nil|486|35|52.5|46|5.01|3.34",
         "nil|486|35|51.5|47.5|5.01|6.68",
         "nil|486|35|82|48|15.03|3.34",
         "nil|486|35|81.5|48.5|20.04|3.34",
         "nil|486|35|81.5|49|15.03|3.34",
         "nil|486|35|70.5|49.5|5.01|6.68",
         "nil|486|35|81|49.5|5.01|3.34",
         "nil|486|35|80.5|50|5.01|3.34",
         "nil|486|35|70.5|50.5|10.02|3.34",
         "nil|486|35|79|50.5|15.03|3.34",
         "nil|486|35|70.5|51|15.03|3.34",
         "nil|486|35|78.5|51|20.04|3.34",
         "nil|486|35|71|51.5|15.03|6.68",
         "nil|486|35|78|51.5|25.05|3.34",
         "nil|486|35|77.5|52|25.05|3.34",
         "nil|486|35|77|52.5|25.05|3.34",
         "nil|486|35|77.5|53|15.03|3.34",
         "nil|486|35|78|53.5|10.02|3.34",
         "nil|486|35|61.5|62|5.01|6.68",
         "nil|486|35|53.5|72.5|5.01|3.34",
       },
    },
  },
  [13834] = {
    Quest = [[Dangerously Delicious|0|0|70|0|12]],
    Start = "1772|504|32|52.73|64.77",
    End = "1772|504|32|52.75|64.77",
    Objectives = {
      [1] = {
         "nil|501|35|31.5|17|5.01|10.02",
         "nil|501|35|24.5|24.5|5.01|3.34",
         "nil|501|35|22.5|32.5|10.02|10.02",
         "nil|501|35|22|34|15.03|3.34",
         "nil|501|35|21.5|34.5|15.03|3.34",
         "nil|501|35|20.5|35|25.05|3.34",
         "nil|501|35|70|35|10.02|6.68",
         "nil|501|35|20.5|35.5|20.04|6.68",
         "nil|501|35|69.5|36|15.03|10.02",
         "nil|501|35|21|36.5|15.03|3.34",
         "nil|501|35|21.5|37|10.02|3.34",
         "nil|501|35|69.5|37.5|20.04|3.34",
         "nil|501|35|38|38|5.01|3.34",
         "nil|501|35|69.5|38|25.05|3.34",
         "nil|501|35|70|38.5|25.05|3.34",
         "nil|501|35|74|38.5|40.08|3.34",
         "nil|501|35|70|39|85.17|3.34",
         "nil|501|35|70|39.5|90.18|3.34",
         "nil|501|35|70|40|100.2|3.34",
         "nil|501|35|65|40.5|5.01|3.34",
         "nil|501|35|69.5|40.5|70.14|3.34",
         "nil|501|35|78|40.5|25.05|3.34",
         "nil|501|35|69|41|70.14|3.34",
         "nil|501|35|78.5|41|20.04|3.34",
         "nil|501|35|69|41.5|65.13|10.02",
         "nil|501|35|79|41.5|15.03|3.34",
         "nil|501|35|79.5|42|10.02|3.34",
         "nil|501|35|79.5|42.5|5.01|6.68",
         "nil|501|35|69.5|43|60.12|6.68",
         "nil|501|35|25.5|43.5|5.01|3.34",
         "nil|501|35|79|43.5|10.02|10.02",
         "nil|501|35|69.5|44|15.03|3.34",
         "nil|501|35|74|44|15.03|3.34",
         "nil|501|35|74.5|44.5|10.02|3.34",
         "nil|501|35|75|45|10.02|3.34",
         "nil|501|35|78.5|45|15.03|3.34",
         "nil|501|35|75|45.5|15.03|3.34",
         "nil|501|35|78|45.5|20.04|3.34",
         "nil|501|35|75|46|50.1|3.34",
         "nil|501|35|76|46.5|40.08|3.34",
         "nil|501|35|31|47|5.01|3.34",
         "nil|501|35|77.5|47|20.04|3.34",
         "nil|501|35|26.5|49|5.01|3.34",
         "nil|501|35|72|49|5.01|3.34",
         "nil|501|35|56|49.5|10.02|6.68",
         "nil|501|35|68.5|51.5|5.01|3.34",
         "nil|501|35|33.5|53.5|5.01|3.34",
         "nil|501|35|42|54.5|5.01|3.34",
         "nil|501|35|63.5|57|20.04|3.34",
         "nil|501|35|57.5|60.5|5.01|3.34",
         "nil|501|35|77.5|68.5|10.02|3.34",
         "nil|501|35|77|69|15.03|3.34",
         "nil|501|35|76|69.5|20.04|3.34",
         "nil|501|35|74.5|70|30.06|3.34",
         "nil|501|35|60|70.5|5.01|3.34",
         "nil|501|35|76|70.5|15.03|3.34",
         "nil|501|35|67.5|71|5.01|3.34",
         "nil|501|35|76.5|71|10.02|3.34",
         "nil|501|35|77|71.5|5.01|10.02",
         "nil|501|35|55.5|75|5.01|3.34",
         "nil|501|35|59.5|76|15.03|6.68",
       },
    },
  },
  [13836] = {
    Quest = [[Disarmed!|0|0|70|0|12]],
    Start = "1772|504|32|52.71|64.74",
    End = "1774|504|32|36.74|37.18",
    Objectives = {
      [1] = {
         "nil|504|35|36.5|37|5.01|3.34",
         "nil|504|35|64.5|59|15.03|23.38",
         "nil|504|35|64.5|62.5|10.02|13.36",
         "nil|504|35|64.5|64.5|15.03|3.34",
         "nil|504|35|67|65.5|10.02|3.34",
         "nil|504|35|60.5|66.5|20.04|13.36",
       },
    },
  },
  [13926] = {
    Quest = [[Little Orphan Roo Of The Oracles|0|0|70|0|3]],
    Start = "1809|504|32|49.22|62.72",
  },
  [13927] = {
    Quest = [[Little Orphan Kekek Of The Wolvar|0|0|70|0|3]],
    Start = "1809|504|32|49.53|62.96",
  },
  [13929] = {
    Quest = [[The Biggest Tree Ever!|0|0|70|0|3]],
    Start = "1812|504|32|49.14|62.65",
  },
  [13930] = {
    Quest = [[Home Of The Bear-Men|0|0|70|0|3]],
    Start = "1813|504|32|49.55|62.73",
  },
  [13933] = {
    Quest = [[The Bronze Dragonshrine|0|0|70|0|3]],
    Start = "1812|504|32|49.11|62.68",
    End = "1813|488|32|72.73|36.99",
  },
  [13934] = {
    Quest = [[The Bronze Dragonshrine|0|0|70|0|3]],
    Start = "1813|504|32|49.55|62.61",
  },
  [13937] = {
    Quest = [[A Trip To The Wonderworks|0|0|70|0|3]],
    Start = "1812|488|32|59.81|54.59",
  },
  [13938] = {
    Quest = [[A Visit To The Wonderworks|0|0|70|0|3]],
    Start = "1813|493|32|27.09|58.76",
  },
  [13950] = {
    Quest = [[Playmates!|0|0|70|0|3]],
    Start = "1812|504|32|49.11|62.67",
    End = "1813|488|32|47.33|63.15",
  },
  [13951] = {
    Quest = [[Playmates!|0|0|70|0|3]],
    Start = "1813|504|32|49.55|62.61",
  },
  [13952] = {
    Quest = [[The Grateful Dead|0|0|1|0|39]],
  },
  [13954] = {
    Quest = [[The Dragon Queen|0|0|70|0|3]],
    Start = "1812|486|32|43.24|13.47",
  },
  [13955] = {
    Quest = [[The Dragon Queen|0|0|70|0|3]],
    Start = "1813|490|32|50.73|44.28",
  },
  [13956] = {
    Quest = [[Meeting a Great One|0|0|70|0|3]],
    Start = "1812|486|32|43.24|13.47",
  },
  [13957] = {
    Quest = [[The Mighty Hemet Nesingwary|0|0|70|0|3]],
    Start = "1813|490|32|50.71|44.31",
  },
  [13959] = {
    Quest = [[Back To The Orphanage|0|0|70|0|3]],
    Start = "1812|504|32|44.27|45.77",
    End = "1809|504|32|49.27|62.79",
  },
  [13960] = {
    Quest = [[Back To The Orphanage|0|0|70|0|3]],
    Start = "1813|504|32|44.24|46.1",
    End = "1809|504|32|49.24|62.8",
  },
  [13966] = {
    Quest = [[A Winter Veil Gift|0|0|10|0|15]],
  },
  [14022] = {
    Quest = [[Pilgrim's Bounty|1|0|1|0|40]],
    Start = "1845|301|32|61.67|74.05",
    End = "1846|30|32|34.06|51.39",
  },
  [14023] = {
    Quest = [[Spice Bread Stuffing|1|0|1|14024|40]],
    Start = "1846|30|32|34.06|51.4",
    End = "1847|30|32|33.86|50.86",
    Objectives = {
      [1] = {
         "nil|30|35|33.5|50.5|10.02|10.02",
       },
      [2] = {
         "nil|30|35|33.5|50.5|10.02|10.02",
       },
    },
  },
  [14024] = {
    Quest = [[Pumpkin Pie|1|0|1|14028|40]],
    Start = "1847|30|32|33.86|50.86",
    End = "1848|27|32|59.83|34.29",
    Objectives = {
      [1] = {
         "nil|30|35|33.5|50.5|10.02|10.02",
       },
      [2] = {
         "nil|30|35|33.5|50.5|10.02|10.02",
       },
    },
  },
  [14028] = {
    Quest = [[Cranberry Chutney|1|0|1|14030|40]],
    Start = "1848|27|32|59.83|34.29",
    End = "1847|30|32|33.8|50.83",
    Objectives = {
      [1] = {
         "nil|27|35|59.5|34|10.02|3.34",
       },
      [2] = {
         "nil|27|35|59.5|34|5.01|3.34",
       },
    },
  },
  [14030] = {
    Quest = [[They're Ravenous In Darnassus|1|0|1|14033|40]],
    Start = "1847|30|32|33.82|50.83",
    End = "1849|381|32|61.37|49.15",
    Objectives = {
      [1] = {
         "nil|30|35|33.5|50.5|10.02|10.02",
       },
      [2] = {
         "nil|30|35|33.5|50.5|5.01|3.34",
       },
    },
  },
  [14033] = {
    Quest = [[Candied Sweet Potatoes|1|0|1|14035|40]],
    Start = "1849|381|32|61.37|49.13",
    End = "1846|30|32|34.07|51.43",
    Objectives = {
      [1] = {
         "nil|381|35|62|46|5.01|10.02",
         "nil|381|35|61.5|47.5|5.01|13.36",
       },
      [2] = {
         "nil|381|35|62|46|5.01|10.02",
         "nil|381|35|61.5|48|5.01|10.02",
       },
    },
  },
  [14035] = {
    Quest = [[Slow-roasted Turkey|1|0|1|0|40]],
    Start = "1846|30|32|34.07|51.42",
    End = "1849|381|32|61.3|49.18",
    Objectives = {
      [1] = {
         "nil|30|35|33.5|50.5|10.02|10.02",
       },
      [2] = {
         "nil|30|35|33.5|50.5|10.02|10.02",
       },
    },
  },
  [14036] = {
    Quest = [[Pilgrim's Bounty|2|0|1|0|40]],
    Start = "1850|321|32|49.6|61.87",
    End = "1851|382|32|64.16|11.28",
  },
  [14037] = {
    Quest = [[Spice Bread Stuffing|2|0|1|14040|40]],
    Start = "1851|382|32|64.16|11.28",
    End = "1852|382|32|65.13|13.81",
    Objectives = {
      [1] = {
         "nil|382|35|63|8|5.01|6.68",
         "nil|382|35|64|10|5.01|10.02",
       },
      [2] = {
         "nil|382|35|63|8|5.01|6.68",
         "nil|382|35|64|10|5.01|10.02",
       },
    },
  },
  [14040] = {
    Quest = [[Pumpkin Pie|2|0|1|14041|40]],
    Start = "1852|382|32|65.16|13.81",
    End = "1854|4|32|46.55|13.83",
    Objectives = {
      [1] = {
         "nil|382|35|63|8|5.01|10.02",
         "nil|382|35|63.5|9.5|5.01|3.34",
         "nil|382|35|64|10|5.01|10.02",
       },
      [2] = {
         "nil|382|35|63|8|5.01|6.68",
         "nil|382|35|64|10|5.01|10.02",
       },
    },
  },
  [14041] = {
    Quest = [[Cranberry Chutney|2|0|1|14043|40]],
    Start = "1854|4|32|46.54|13.83",
    End = "1855|362|32|30.63|63.51",
    Objectives = {
      [1] = {
         "nil|4|35|46|13.5|10.02|3.34",
       },
      [2] = {
         "nil|4|35|46|13.5|10.02|3.34",
       },
    },
  },
  [14043] = {
    Quest = [[Candied Sweet Potatoes|2|0|1|14044|40]],
    Start = "1855|362|32|30.62|63.5",
    End = "1854|4|32|46.54|13.82",
    Objectives = {
      [1] = {
         "nil|362|35|30.5|63|5.01|6.68",
         "nil|362|35|30.5|69.5|5.01|6.68",
       },
      [2] = {
         "nil|362|35|30.5|63|5.01|6.68",
         "nil|362|35|30.5|69.5|5.01|6.68",
       },
    },
  },
  [14044] = {
    Quest = [[Undersupplied in the Undercity|2|0|1|14047|40]],
    Start = "1854|4|32|46.54|13.83",
    End = "1851|382|32|64.16|11.48",
    Objectives = {
      [1] = {
         "nil|4|35|46|13.5|10.02|3.34",
       },
      [2] = {
         "nil|4|35|46.5|13.5|5.01|3.34",
       },
    },
  },
  [14047] = {
    Quest = [[Slow-roasted Turkey|2|0|1|0|40]],
    Start = "1851|382|32|64.17|11.47",
    End = "1854|4|32|46.57|13.84",
    Objectives = {
      [1] = {
         "nil|382|35|63|8.5|5.01|6.68",
         "nil|382|35|63.5|9.5|5.01|3.34",
         "nil|382|35|64|10|5.01|10.02",
       },
      [2] = {
         "nil|382|35|64|11|5.01|3.34",
       },
    },
  },
  [14048] = {
    Quest = [[Can't Get Enough Turkey|1|0|1|0|40]],
    Start = "1857|27|32|60.01|34.26",
    End = "1857|27|32|60.02|34.24",
    Objectives = {
      [1] = {
         "nil|30|35|33.5|50.5|10.02|10.02",
       },
    },
  },
  [14051] = {
    Quest = [[Don't Forget The Stuffing!|1|0|1|0|40]],
    Start = "1857|27|32|60.01|34.26",
    End = "1857|27|32|60|34.28",
    Objectives = {
      [1] = {
         "nil|27|35|59.5|34|10.02|3.34",
       },
    },
  },
  [14053] = {
    Quest = [[We're Out of Cranberry Chutney Again?|1|0|1|0|40]],
    Start = "1859|30|32|33.67|50.68",
    End = "1859|30|32|33.68|50.68",
    Objectives = {
      [1] = {
         "nil|27|35|59.5|34|10.02|3.34",
       },
    },
  },
  [14054] = {
    Quest = [[Easy As Pie|1|0|1|0|40]],
    Start = "1860|381|32|61.86|46.32",
    End = "1860|381|32|61.89|46.29",
    Objectives = {
      [1] = {
         "nil|381|35|62|46|5.01|10.02",
         "nil|381|35|61.5|48|5.01|10.02",
       },
    },
  },
  [14055] = {
    Quest = [[She Says Potato|1|0|1|0|40]],
    Start = "1847|30|32|33.83|50.84",
    End = "1847|30|32|33.83|50.85",
    Objectives = {
      [1] = {
         "nil|381|35|62|46|5.01|10.02",
         "nil|381|35|61.5|48|5.01|10.02",
       },
    },
  },
  [14058] = {
    Quest = [[She Says Potato|2|0|1|0|40]],
    Start = "1852|382|32|65.18|14.03",
    End = "1852|382|32|65.15|13.96",
    Objectives = {
      [1] = {
         "nil|362|35|30.5|62.5|5.01|10.02",
         "nil|362|35|30.5|69.5|5.01|6.68",
       },
    },
  },
  [14059] = {
    Quest = [[We're Out of Cranberry Chutney Again?|2|0|1|0|40]],
    Start = "1861|382|32|63.33|8.79",
    End = "1861|382|32|63.34|8.76",
    Objectives = {
      [1] = {
         "nil|4|35|46|13.5|10.02|3.34",
       },
    },
  },
  [14060] = {
    Quest = [[Easy As Pie|2|0|1|0|40]],
    Start = "1862|362|32|30.95|69.57",
    End = "1862|362|32|30.93|69.59",
    Objectives = {
      [1] = {
         "nil|382|35|64|10.5|5.01|6.68",
       },
    },
  },
  [14061] = {
    Quest = [[Can't Get Enough Turkey|2|0|1|0|40]],
    Start = "1863|4|32|46.36|13.88",
    End = "1863|4|32|46.37|13.87",
    Objectives = {
      [1] = {
         "nil|382|35|63|8|5.01|6.68",
         "nil|382|35|64|10|5.01|10.02",
       },
    },
  },
  [14062] = {
    Quest = [[Don't Forget The Stuffing!|2|0|1|0|40]],
    Start = "1863|4|32|46.36|13.88",
    End = "1863|4|32|46.38|13.88",
    Objectives = {
      [1] = {
         "nil|4|35|46|13.5|10.02|3.34",
       },
    },
  },
  [14064] = {
    Quest = [[Sharing a Bountiful Feast|1|0|0|0|40]],
    Start = "1864|27|32|53.41|51.39",
    End = "1864|27|32|53.39|51.4",
    Objectives = {
      [1] = {
         "nil|27|35|59.5|34.5|5.01|3.34",
         "nil|27|35|53|51|5.01|3.34",
       },
    },
  },
  [14065] = {
    Quest = [[Sharing a Bountiful Feast|2|0|0|0|40]],
    Start = "1865|4|32|52.77|44.07",
    End = "1865|9|32|46.73|59.13",
    Objectives = {
      [1] = {
         "nil|4|35|46|14|10.02|6.68",
         "nil|4|35|52.5|43.5|10.02|6.68",
       },
    },
  },
  [14151] = {
    Quest = [[Cardinal Ruby|0|0|65|0|13]],
    Start = "1887|504|32|42.32|32.03",
    End = "1887|504|32|42.31|31.89",
    Objectives = {
      [1] = {
         "nil|504|35|52.5|14.5|15.03|3.34",
         "nil|504|35|52.5|15|20.04|3.34",
         "nil|504|35|52|15.5|25.05|3.34",
         "nil|504|35|51.5|16|30.06|3.34",
         "nil|504|35|50.5|16.5|15.03|3.34",
         "nil|504|35|53.5|16.5|10.02|3.34",
         "nil|504|35|50.5|17|10.02|3.34",
         "nil|504|35|54|17|5.01|3.34",
         "nil|504|35|54.5|17.5|5.01|10.02",
         "nil|504|35|49.5|25.5|10.02|3.34",
         "nil|504|35|51.5|26.5|10.02|3.34",
         "nil|504|35|37.5|28.5|30.06|3.34",
         "nil|504|35|38|29|25.05|3.34",
         "nil|504|35|38.5|29.5|20.04|3.34",
         "nil|504|35|39|30|15.03|3.34",
         "nil|504|35|39|30.5|20.04|3.34",
         "nil|504|35|39|31|25.05|3.34",
         "nil|504|35|62.5|31|5.01|10.02",
         "nil|504|35|39|31.5|35.07|6.68",
         "nil|504|35|62|32.5|5.01|3.34",
         "nil|504|35|61.5|33|5.01|6.68",
         "nil|504|35|43.5|49|5.01|3.34",
         "nil|504|35|44.5|58|5.01|3.34",
         "nil|504|35|37|62.5|5.01|3.34",
         "nil|504|35|44.5|68|5.01|3.34",
         "nil|504|35|41.5|75.5|15.03|3.34",
         "nil|504|35|42|76|20.04|3.34",
         "nil|504|35|42.5|76.5|15.03|3.34",
         "nil|504|35|43|77|15.03|3.34",
         "nil|504|35|43|77.5|20.04|3.34",
         "nil|504|35|43|78|35.07|6.68",
         "nil|504|35|43|79|25.05|3.34",
         "nil|504|35|43|79.5|20.04|3.34",
         "nil|504|35|43.5|80|10.02|3.34",
       },
    },
  },
  [14166] = {
    Quest = [[The Grateful Dead|0|0|1|0|39]],
  },
  [14167] = {
    Quest = [[The Grateful Dead|0|0|1|0|39]],
  },
  [14168] = {
    Quest = [[The Grateful Dead|0|0|1|0|39]],
  },
  [14169] = {
    Quest = [[The Grateful Dead|0|0|1|0|39]],
  },
  [14170] = {
    Quest = [[The Grateful Dead|0|0|1|0|39]],
  },
  [14171] = {
    Quest = [[The Grateful Dead|0|0|1|0|39]],
  },
  [14172] = {
    Quest = [[The Grateful Dead|0|0|1|0|39]],
  },
  [14173] = {
    Quest = [[The Grateful Dead|0|0|1|0|39]],
  },
  [14174] = {
    Quest = [[The Grateful Dead|0|0|1|0|39]],
  },
  [14175] = {
    Quest = [[The Grateful Dead|0|0|1|0|39]],
  },
  [14176] = {
    Quest = [[The Grateful Dead|0|0|1|0|39]],
  },
  [14177] = {
    Quest = [[The Grateful Dead|0|0|1|0|39]],
  },
  [24536] = {
    Quest = [[Something Stinks|2|0|1|24541|41]],
    Start = "1995|321|32|50.83|75.29",
    End = "1995|321|32|50.8|75.4",
    Objectives = {
      [1] = {
         "nil|321|35|47|71|5.01|3.34",
         "nil|321|35|50.5|77.5|10.02|3.34",
         "nil|321|35|50.5|78|15.03|3.34",
         "nil|321|35|50.5|78.5|20.04|3.34",
         "nil|321|35|50.5|79|25.05|3.34",
         "nil|321|35|50|79.5|30.06|3.34",
         "nil|321|35|49.5|80|35.07|3.34",
         "nil|321|35|47|80.5|55.11|3.34",
         "nil|321|35|50|81|25.05|3.34",
         "nil|321|35|51|81.5|15.03|3.34",
       },
    },
  },
  [24541] = {
    Quest = [[Pilfering Perfume|2|0|1|24850|41]],
    Start = "1995|321|32|50.81|75.32",
    End = "1995|321|32|50.83|75.2",
    Objectives = {
      [1] = {
         "nil|321|35|50.5|75|5.01|6.68",
       },
    },
  },
  [24576] = {
    Quest = [[A Friendly Chat...|2|0|1|0|41]],
    Start = "2047|321|32|57.58|60.89",
    End = "1995|321|32|50.9|75.47",
    Objectives = {
      [1] = {
         "nil|321|35|51|56.5|10.02|3.34",
       },
    },
  },
  [24597] = {
    Quest = [[A Gift for the King of Stormwind|1|0|0|0|41]],
    Start = "2051|301|32|62.38|74.98",
    End = "315|301|32|85.72|31.77",
    Objectives = {
      [1] = {
         "nil|301|35|73|18|15.03|6.68",
         "nil|301|35|64.5|29|5.01|3.34",
         "nil|301|35|85|31.5|10.02|3.34",
         "nil|301|35|84.5|32|15.03|10.02",
         "nil|301|35|81.5|36.5|5.01|3.34",
         "nil|301|35|79.5|38|5.01|3.34",
         "nil|301|35|69|45.5|5.01|3.34",
         "nil|301|35|60.5|50.5|5.01|3.34",
         "nil|301|35|70|51.5|5.01|10.02",
         "nil|301|35|63.5|61|5.01|3.34",
         "nil|301|35|70|62|5.01|3.34",
         "nil|301|35|65.5|64.5|5.01|3.34",
         "nil|301|35|74.5|67|5.01|3.34",
         "nil|301|35|63.5|68.5|10.02|10.02",
         "nil|301|35|63.5|70|5.01|13.36",
         "nil|301|35|63|72|5.01|3.34",
         "nil|301|35|62.5|72.5|5.01|3.34",
         "nil|301|35|61.5|73|15.03|13.36",
         "nil|301|35|49.5|74|5.01|3.34",
         "nil|301|35|62|75|10.02|6.68",
         "nil|301|35|62|76|5.01|6.68",
         "nil|301|35|63.5|80|5.01|6.68",
       },
    },
  },
  [24609] = {
    Quest = [[A Gift for a Lord of Ironforge|1|0|0|0|41]],
    Start = "2051|341|32|33.23|65.69",
    End = "304|341|32|39.07|55.45",
    Objectives = {
      [1] = {
         "nil|341|35|40.5|54|5.01|3.34",
         "nil|341|35|40|54.5|10.02|3.34",
         "nil|341|35|39.5|55|10.02|3.34",
         "nil|341|35|39|55.5|10.02|3.34",
         "nil|341|35|30|64|5.01|3.34",
         "nil|341|35|33|65.5|5.01|3.34",
       },
    },
  },
  [24610] = {
    Quest = [[A Gift for the High Priestess of Elune|1|0|0|0|41]],
    Start = "2051|381|32|45.35|57.53",
    Objectives = {
      [1] = {
         "nil|42|35|52|18|5.01|3.34",
         "nil|42|35|40.5|41|5.01|3.34",
       },
    },
  },
  [24611] = {
    Quest = [[A Gift for the Prophet|1|0|0|0|41]],
    Start = "2051|471|32|73.81|56.64",
    Objectives = {
      [1] = {
         "nil|471|35|72.5|34.5|5.01|3.34",
         "nil|471|35|75|53.5|5.01|3.34",
         "nil|471|35|31.5|54|10.02|3.34",
         "nil|471|35|74.5|54|10.02|6.68",
         "nil|471|35|74.5|55|5.01|3.34",
         "nil|471|35|74|55.5|10.02|10.02",
       },
    },
  },
  [24612] = {
    Quest = [[A Gift for the Warchief|2|0|0|0|41]],
    Start = "2051|321|32|52.88|76.85",
    End = "320|321|32|48.06|70.58",
    Objectives = {
      [1] = {
         "nil|321|35|66|36|5.01|3.34",
         "nil|321|35|52.5|37|5.01|3.34",
         "nil|321|35|68|40|5.01|3.34",
         "nil|321|35|40.5|46|5.01|6.68",
         "nil|321|35|41.5|48|5.01|6.68",
         "nil|321|35|70|49|5.01|3.34",
         "nil|321|35|45.5|69.5|10.02|3.34",
         "nil|321|35|45.5|70|15.03|3.34",
         "nil|321|35|45.5|70.5|35.07|3.34",
         "nil|321|35|46|71|30.06|10.02",
         "nil|321|35|46|72.5|35.07|6.68",
         "nil|321|35|54|73|5.01|3.34",
         "nil|321|35|46|73.5|40.08|3.34",
         "nil|321|35|53.5|73.5|10.02|3.34",
         "nil|321|35|48.5|74|20.04|3.34",
         "nil|321|35|53|74|10.02|3.34",
         "nil|321|35|49|74.5|45.09|3.34",
         "nil|321|35|49.5|75|40.08|13.36",
         "nil|321|35|50|77|35.07|3.34",
         "nil|321|35|50.5|77.5|30.06|3.34",
         "nil|321|35|51|78|25.05|10.02",
         "nil|321|35|40|79|5.01|3.34",
         "nil|321|35|52|85.5|5.01|3.34",
         "nil|321|35|52|90|5.01|3.34",
       },
    },
  },
  [24613] = {
    Quest = [[A Gift for the Banshee Queen|2|0|0|0|41]],
    Start = "2051|382|32|66.53|38.43",
    End = "422|382|32|58.26|92.29",
    Objectives = {
      [1] = {
         "nil|382|35|57|90.5|15.03|16.7",
       },
    },
  },
  [24614] = {
    Quest = [[A Gift for the High Chieftain|2|0|0|0|41]],
    Start = "2051|362|32|44|52.77",
    End = "302|362|32|60.04|51.78",
    Objectives = {
      [1] = {
         "nil|362|35|58.5|51.5|20.04|3.34",
         "nil|362|35|43.5|52.5|10.02|6.68",
       },
    },
  },
  [24615] = {
    Quest = [[A Gift for the Regent Lord of Quel'Thalas|2|0|0|0|41]],
    Start = "2051|480|32|64.28|66.52",
    End = "447|480|32|53.88|20.12",
    Objectives = {
      [1] = {
         "nil|480|35|53.5|20|10.02|6.68",
         "nil|480|35|64|66|5.01|6.68",
       },
    },
  },
  [24629] = {
    Quest = [[A Perfect Puff of Perfume|0|0|0|0|41]],
    Start = "2060|301|32|62.31|75.17",
    End = "2060|341|32|33.98|66.72",
    Objectives = {
      [1] = {
         "nil|321|35|66.5|36|5.01|6.68",
         "nil|321|35|48|71|5.01|13.36",
         "nil|321|35|53|73|15.03|3.34",
         "nil|321|35|52.5|73.5|20.04|3.34",
         "nil|321|35|52|74|25.05|3.34",
         "nil|321|35|50.5|74.5|35.07|3.34",
         "nil|321|35|50.5|75|30.06|3.34",
         "nil|321|35|50.5|75.5|25.05|13.36",
         "nil|321|35|50.5|77.5|30.06|3.34",
         "nil|321|35|50.5|78|35.07|3.34",
         "nil|321|35|50.5|78.5|40.08|3.34",
         "nil|321|35|50.5|79|35.07|3.34",
         "nil|321|35|50|79.5|10.02|3.34",
         "nil|321|35|49.5|80|10.02|3.34",
         "nil|321|35|49|80.5|10.02|6.68",
         "nil|321|35|49|81.5|5.01|3.34",
         "nil|321|35|48.5|82|5.01|10.02",
       },
    },
  },
  [24635] = {
    Quest = [[A Cloudlet of Classy Cologne|0|0|0|0|41]],
    Start = "2060|321|32|52.9|77.06",
    End = "2060|301|32|62.24|75.2",
    Objectives = {
      [1] = {
         "nil|321|35|49.5|38|5.01|3.34",
         "nil|321|35|67|38.5|5.01|3.34",
         "nil|321|35|57.5|48|5.01|3.34",
         "nil|321|35|53|49|5.01|3.34",
         "nil|321|35|40|49.5|5.01|3.34",
         "nil|321|35|48|70.5|15.03|3.34",
         "nil|321|35|48|71|20.04|3.34",
         "nil|321|35|48|71.5|25.05|3.34",
         "nil|321|35|48|72|35.07|3.34",
         "nil|321|35|48|72.5|40.08|3.34",
         "nil|321|35|48|73|65.13|6.68",
         "nil|321|35|48|74|60.12|3.34",
         "nil|321|35|48|74.5|55.11|3.34",
         "nil|321|35|48|75|50.1|13.36",
         "nil|321|35|48.5|77|45.09|3.34",
         "nil|321|35|49|77.5|40.08|3.34",
         "nil|321|35|49.5|78|35.07|6.68",
         "nil|321|35|49.5|79|30.06|3.34",
         "nil|321|35|49|79.5|35.07|6.68",
         "nil|321|35|49|80.5|30.06|6.68",
         "nil|321|35|48.5|81.5|35.07|3.34",
         "nil|321|35|48.5|82|15.03|3.34",
         "nil|321|35|48.5|82.5|10.02|3.34",
         "nil|321|35|52|86|10.02|6.68",
         "nil|321|35|51.5|90.5|5.01|3.34",
       },
    },
  },
  [24636] = {
    Quest = [[Bonbon Blitz|0|0|0|0|41]],
    Start = "2060|321|32|52.88|77.12",
    End = "2060|301|32|62.29|75.1",
    Objectives = {
      [1] = {
         "nil|321|35|66.5|36.5|5.01|3.34",
         "nil|321|35|56.5|62.5|5.01|3.34",
         "nil|321|35|53|70|5.01|13.36",
         "nil|321|35|48|71|15.03|13.36",
         "nil|321|35|53|72|10.02|6.68",
         "nil|321|35|49|73|10.02|3.34",
         "nil|321|35|52.5|73|15.03|3.34",
         "nil|321|35|49.5|73.5|10.02|3.34",
         "nil|321|35|52|73.5|20.04|3.34",
         "nil|321|35|50|74|40.08|6.68",
         "nil|321|35|50|75|35.07|3.34",
         "nil|321|35|50|75.5|30.06|6.68",
         "nil|321|35|49.5|76.5|35.07|3.34",
         "nil|321|35|44|77|15.03|6.68",
         "nil|321|35|49.5|77|40.08|3.34",
         "nil|321|35|49.5|77.5|45.09|3.34",
         "nil|321|35|49.5|78|55.11|6.68",
         "nil|321|35|49|79|50.1|3.34",
         "nil|321|35|49|79.5|40.08|3.34",
         "nil|321|35|49|80|35.07|3.34",
         "nil|321|35|49|80.5|25.05|3.34",
         "nil|321|35|49|81|20.04|3.34",
         "nil|321|35|49|81.5|10.02|3.34",
         "nil|321|35|48.5|82|10.02|3.34",
         "nil|321|35|48.5|82.5|5.01|6.68",
       },
    },
  },
  [24638] = {
    Quest = [[Crushing the Crown|2|0|5|0|41]],
    Start = "1995|321|32|50.82|75.15",
  },
  [24645] = {
    Quest = [[Crushing the Crown|0|0|14|0|41]],
  },
  [24647] = {
    Quest = [[Crushing the Crown|2|0|23|0|41]],
    Start = "1995|321|32|50.87|75.18",
  },
  [24648] = {
    Quest = [[Crushing the Crown|2|0|32|0|41]],
    Start = "1995|321|32|50.82|75.15",
  },
  [24649] = {
    Quest = [[Crushing the Crown|2|0|41|0|41]],
    Start = "1995|321|32|50.95|75.2",
  },
  [24650] = {
    Quest = [[Crushing the Crown|2|0|51|0|41]],
    Start = "1995|321|32|50.85|75.08",
  },
  [24651] = {
    Quest = [[Crushing the Crown|2|0|61|0|41]],
    Start = "1995|321|32|50.82|75.19",
  },
  [24652] = {
    Quest = [[Crushing the Crown|2|0|71|0|41]],
    Start = "1995|321|32|50.85|75.43",
    End = "1995|321|32|50.7|75.11",
    Objectives = {
      [1] = {
         "#",
       },
      [2] = {
         "nil|321|35|39.5|47.5|5.01|3.34",
       },
    },
  },
  [24655] = {
    Quest = [[Something Stinks|1|0|1|24656|41]],
    Start = "2065|301|32|61.54|75.12",
    End = "2065|301|32|61.36|75.11",
    Objectives = {
      [1] = {
         "nil|301|35|66|77|10.02|13.36",
       },
    },
  },
  [24656] = {
    Quest = [[Pilfering Perfume|1|0|1|24848|41]],
    Start = "2065|301|32|61.59|75.2",
    End = "2065|301|32|61.55|75.24",
    Objectives = {
      [1] = {
         "nil|301|35|61|75|5.01|3.34",
       },
    },
  },
  [24657] = {
    Quest = [[A Friendly Chat...|1|0|1|0|41]],
    Start = "2066|301|32|60.5|76.21",
    End = "2065|301|32|61.63|75.11",
    Objectives = {
      [1] = {
         "nil|301|35|27.5|34.5|5.01|6.68",
       },
    },
  },
  [24658] = {
    Quest = [[Crushing the Crown|1|0|5|0|41]],
    Start = "2065|301|32|61.58|75.08",
  },
  [24659] = {
    Quest = [[Crushing the Crown|1|0|14|0|41]],
    Start = "2065|301|32|61.52|75.1",
  },
  [24660] = {
    Quest = [[Crushing the Crown|1|0|23|0|41]],
    Start = "2065|301|32|61.41|74.91",
  },
  [24662] = {
    Quest = [[Crushing the Crown|1|0|32|0|41]],
    Start = "2065|301|32|61.56|75.06",
  },
  [24663] = {
    Quest = [[Crushing the Crown|1|0|41|0|41]],
    Start = "2065|301|32|61.76|75.28",
  },
  [24664] = {
    Quest = [[Crushing the Crown|1|0|51|0|41]],
    Start = "2065|301|32|61.51|74.88",
  },
  [24665] = {
    Quest = [[Crushing the Crown|1|0|61|0|41]],
    Start = "2065|301|32|61.59|75.18",
  },
  [24666] = {
    Quest = [[Crushing the Crown|1|0|71|0|41]],
    Start = "2065|301|32|61.54|75.07",
    Objectives = {
      [1] = {
         "nil|510|35|46|51|5.01|6.68",
       },
      [2] = {
         "nil|510|35|45.5|50.5|15.03|6.68",
         "nil|510|35|45|51.5|20.04|10.02",
         "nil|510|35|44.5|53|20.04|3.34",
         "nil|510|35|44.5|53.5|15.03|6.68",
       },
    },
  },
  [24792] = {
    Quest = [[Man on the Inside|0|0|78|14488|41]],
  },
  [24793] = {
    Quest = [[Man on the Inside|0|0|78|14488|41]],
  },
  [24803] = {
    Quest = [[Kalu'ak Fishing Derby|0|0|1|0|12]],
  },
  [24804] = {
    Quest = [[Uncommon Scents|1|0|1|24655|41]],
    Start = "2102|381|32|44.81|56.46",
    End = "2065|301|32|61.46|75.09",
  },
  [24805] = {
    Quest = [[Uncommon Scents|2|0|1|24536|41]],
    Start = "2103|362|32|44.09|55.65",
    End = "1995|321|32|50.85|75.3",
  },
  [24806] = {
    Quest = [[Better Luck Next Time|0|0|1|0|12]],
  },
  [24848] = {
    Quest = [[Fireworks At The Gilded Rose|1|0|1|24849|41]],
    Start = "2065|301|32|61.55|75.24",
    End = "2066|301|32|60.5|76.19",
  },
  [24849] = {
    Quest = [[Hot On The Trail|1|0|1|24657|41]],
    Start = "2066|301|32|60.5|76.19",
    End = "2066|301|32|60.51|76.08",
    Objectives = {
      [1] = {
         "nil|301|35|63|78.5|5.01|6.68",
       },
      [2] = {
         "nil|301|35|61|71|5.01|6.68",
       },
      [3] = {
         "nil|301|35|61|65|5.01|3.34",
       },
    },
  },
  [24850] = {
    Quest = [[Snivel's Sweetheart|2|0|1|24851|41]],
    Start = "1995|321|32|50.83|75.28",
    End = "2047|321|32|57.58|60.97",
  },
  [24851] = {
    Quest = [[Hot On The Trail|2|0|1|24576|41]],
    Start = "2047|321|32|57.57|60.95",
    End = "2047|321|32|57.65|60.92",
    Objectives = {
      [1] = {
         "nil|321|35|49|82|5.01|3.34",
       },
      [2] = {
         "nil|321|35|52.5|74|10.02|6.68",
       },
      [3] = {
         "nil|321|35|40|60.5|10.02|3.34",
       },
    },
  },
  [25047] = {
    Quest = [[Broken Panther Figurine|0|0|1|0|36]],
    Objectives = {
      [1] = {
         "nil|321|35|73|36.5|5.01|6.68",
         "nil|321|35|67.5|39.5|5.01|3.34",
         "nil|321|35|39.5|48.5|15.03|6.68",
         "nil|321|35|52.5|75|5.01|10.02",
       },
      [2] = {
         "nil|321|35|75.5|37|10.02|3.34",
         "nil|321|35|67.5|39|5.01|3.34",
         "nil|321|35|40.5|49.5|5.01|3.34",
         "nil|321|35|67|51.5|5.01|3.34",
         "nil|321|35|52.5|75.5|5.01|3.34",
         "nil|321|35|44.5|78.5|5.01|3.34",
       },
      [3] = {
         "nil|321|35|75.5|37|10.02|3.34",
         "nil|321|35|67.5|39|5.01|3.34",
         "nil|321|35|40.5|49.5|5.01|6.68",
         "nil|321|35|52.5|75|5.01|6.68",
         "nil|321|35|44.5|78.5|5.01|3.34",
       },
    },
  },
  [25105] = {
    Quest = [[Nibbler!  No!|1|0|1|0|36]],
    Start = "2177|301|32|63.72|61.32",
    End = "2177|301|32|63.74|61.34",
    Objectives = {
      [1] = {
         "nil|301|35|63|60.5|15.03|10.02",
         "nil|301|35|62|74|5.01|6.68",
         "nil|301|35|61.5|75|10.02|10.02",
         "nil|301|35|61.5|76.5|15.03|3.34",
         "nil|301|35|61.5|77|20.04|3.34",
         "nil|301|35|62|77.5|15.03|10.02",
         "nil|301|35|62.5|79|10.02|3.34",
         "nil|301|35|63|79.5|10.02|3.34",
         "nil|301|35|63.5|80|5.01|6.68",
       },
      [2] = {
         "nil|301|35|63|60.5|10.02|10.02",
         "nil|301|35|62|74|5.01|3.34",
         "nil|301|35|61.5|74.5|10.02|13.36",
         "nil|301|35|61.5|76.5|15.03|3.34",
         "nil|301|35|61.5|77|20.04|3.34",
         "nil|301|35|62|77.5|15.03|10.02",
         "nil|301|35|62.5|79|10.02|3.34",
         "nil|301|35|63|79.5|10.02|3.34",
         "nil|301|35|63.5|80|5.01|6.68",
       },
    },
  },
  [25154] = {
    Quest = [[A Present for Lila|1|0|1|0|36]],
    Start = "2177|301|32|63.74|61.33",
    End = "2177|301|32|63.75|61.33",
    Objectives = {
      [1] = {
         "nil|301|35|63|60.5|15.03|10.02",
         "nil|301|35|61.5|73|10.02|23.38",
         "nil|301|35|61.5|76.5|15.03|3.34",
         "nil|301|35|62|77|15.03|10.02",
         "nil|301|35|62.5|78.5|10.02|3.34",
         "nil|301|35|63|79|5.01|3.34",
         "nil|301|35|63.5|79.5|5.01|10.02",
       },
      [2] = {
         "nil|301|35|63|60.5|15.03|10.02",
         "nil|301|35|61.5|73|10.02|23.38",
         "nil|301|35|61.5|76.5|15.03|3.34",
         "nil|301|35|62|77|15.03|10.02",
         "nil|301|35|62.5|78.5|10.02|3.34",
         "nil|301|35|63|79|5.01|3.34",
         "nil|301|35|63.5|79.5|5.01|10.02",
       },
    },
  },
  [25155] = {
    Quest = [[Ogrezonians in the Mood|1|0|1|0|36]],
    Start = "2177|301|32|63.74|61.33",
    End = "2177|301|32|63.74|61.33",
    Objectives = {
      [1] = {
         "nil|301|35|64|28|5.01|3.34",
         "nil|301|35|63|61|15.03|6.68",
         "nil|301|35|66.5|65|5.01|3.34",
         "nil|301|35|62|73.5|5.01|6.68",
         "nil|301|35|61.5|74.5|10.02|13.36",
         "nil|301|35|61.5|76.5|15.03|3.34",
         "nil|301|35|62|77|15.03|13.36",
       },
      [2] = {
         "nil|301|35|64|28|5.01|3.34",
         "nil|301|35|63|61|15.03|6.68",
         "nil|301|35|62|73.5|5.01|6.68",
         "nil|301|35|61.5|74.5|10.02|13.36",
         "nil|301|35|61.5|76.5|15.03|3.34",
         "nil|301|35|62|77|15.03|13.36",
       },
    },
  },
  [25156] = {
    Quest = [[Elemental Goo|1|0|1|0|36]],
    Start = "2177|301|32|63.72|61.33",
    End = "2177|301|32|63.75|61.33",
    Objectives = {
      [1] = {
         "nil|606|35|65.5|18.5|10.02|10.02",
         "nil|606|35|58.5|20|40.08|3.34",
         "nil|606|35|65|20|20.04|3.34",
         "nil|606|35|58.5|20.5|45.09|3.34",
         "nil|606|35|64.5|20.5|25.05|3.34",
         "nil|606|35|58.5|21|90.18|3.34",
         "nil|606|35|58.5|21.5|95.19|6.68",
         "nil|606|35|58.5|22.5|100.2|3.34",
         "nil|606|35|62.5|23|65.13|3.34",
         "nil|606|35|63|23.5|60.12|3.34",
         "nil|606|35|63.5|24|55.11|6.68",
         "nil|606|35|64|25|45.09|3.34",
         "nil|606|35|64|25.5|20.04|3.34",
         "nil|606|35|64|26|15.03|3.34",
         "nil|606|35|11|35.5|5.01|3.34",
         "nil|606|35|15|40|10.02|3.34",
         "nil|606|35|14.5|40.5|15.03|3.34",
         "nil|606|35|13|41|30.06|3.34",
         "nil|606|35|13|41.5|25.05|6.68",
         "nil|606|35|13.5|42.5|15.03|3.34",
         "nil|606|35|13.5|43|10.02|3.34",
         "nil|606|35|13.5|43.5|5.01|10.02",
         "nil|606|35|25.5|52|5.01|3.34",
       },
    },
  },
  [25157] = {
    Quest = [[The Latest Fashion!|1|0|1|0|36]],
    Start = "2177|301|32|63.74|61.32",
    End = "2177|301|32|63.76|61.34",
    Objectives = {
      [1] = {
         "nil|301|35|62|31.5|5.01|10.02",
         "nil|301|35|62|33|10.02|10.02",
         "nil|301|35|62|60.5|30.06|3.34",
         "nil|301|35|61.5|61|35.07|3.34",
         "nil|301|35|61|61.5|40.08|3.34",
         "nil|301|35|64.5|62|10.02|3.34",
         "nil|301|35|65|62.5|10.02|3.34",
         "nil|301|35|65.5|63|10.02|6.68",
         "nil|301|35|57.5|63.5|20.04|3.34",
         "nil|301|35|57|64|25.05|10.02",
         "nil|301|35|65.5|64|15.03|3.34",
         "nil|301|35|68|65|10.02|3.34",
         "nil|301|35|57|65.5|30.06|3.34",
         "nil|301|35|57.5|66|30.06|3.34",
         "nil|301|35|58|66.5|35.07|6.68",
         "nil|301|35|60|67.5|20.04|3.34",
         "nil|301|35|60.5|68|20.04|3.34",
         "nil|301|35|61|68.5|40.08|23.38",
         "nil|301|35|51.5|71|15.03|3.34",
         "nil|301|35|50|71.5|15.03|3.34",
         "nil|301|35|60.5|72|40.08|3.34",
         "nil|301|35|60.5|72.5|35.07|3.34",
         "nil|301|35|60.5|73|30.06|6.68",
         "nil|301|35|60.5|74|25.05|3.34",
         "nil|301|35|61|74.5|15.03|6.68",
         "nil|301|35|61.5|75.5|10.02|3.34",
       },
    },
  },
  [25158] = {
    Quest = [[Nibbler!  No!|2|0|1|0|36]],
    Start = "2188|321|32|71.86|36.1",
    End = "2188|321|32|71.87|36.1",
    Objectives = {
      [1] = {
         "nil|321|35|72|34|10.02|3.34",
         "nil|321|35|71.5|34.5|15.03|10.02",
         "nil|321|35|71.5|36|10.02|6.68",
         "nil|321|35|67|38.5|10.02|10.02",
         "nil|321|35|67|51.5|10.02|13.36",
         "nil|321|35|52.5|75.5|5.01|3.34",
       },
      [2] = {
         "nil|321|35|72|34|10.02|3.34",
         "nil|321|35|71.5|34.5|15.03|10.02",
         "nil|321|35|71.5|36|10.02|6.68",
         "nil|321|35|67|38.5|10.02|10.02",
         "nil|321|35|67|51.5|10.02|13.36",
         "nil|321|35|52.5|75.5|5.01|3.34",
       },
    },
  },
  [25159] = {
    Quest = [[The Latest Fashion!|2|0|1|0|36]],
    Start = "2188|321|32|71.87|36.07",
    End = "2188|321|32|71.89|36.06",
    Objectives = {
      [1] = {
         "nil|321|35|74.5|33.5|20.04|3.34",
         "nil|321|35|72|34|45.09|3.34",
         "nil|321|35|71.5|34.5|50.1|6.68",
         "nil|321|35|71|35.5|55.11|10.02",
         "nil|321|35|66.5|36|5.01|6.68",
         "nil|321|35|66.5|37|10.02|3.34",
         "nil|321|35|72|37|45.09|3.34",
         "nil|321|35|66.5|37.5|15.03|3.34",
         "nil|321|35|74.5|37.5|20.04|3.34",
         "nil|321|35|66.5|38|20.04|10.02",
         "nil|321|35|66.5|39.5|25.05|3.34",
         "nil|321|35|66.5|40|30.06|3.34",
         "nil|321|35|66.5|40.5|35.07|3.34",
         "nil|321|35|66.5|41|30.06|3.34",
         "nil|321|35|66.5|41.5|15.03|3.34",
       },
    },
  },
  [25160] = {
    Quest = [[A Present for Lila|2|0|1|0|36]],
    Start = "2188|321|32|71.87|36.07",
    End = "2188|321|32|71.88|36.07",
    Objectives = {
      [1] = {
         "nil|321|35|72|34|10.02|3.34",
         "nil|321|35|71.5|34.5|15.03|6.68",
         "nil|321|35|71.5|35.5|20.04|10.02",
         "nil|321|35|66.5|36|5.01|10.02",
         "nil|321|35|67|37.5|5.01|3.34",
         "nil|321|35|67|38|10.02|3.34",
         "nil|321|35|67|38.5|15.03|10.02",
         "nil|321|35|67|52|10.02|10.02",
         "nil|321|35|52.5|75.5|5.01|3.34",
       },
      [2] = {
         "nil|321|35|72|34|10.02|3.34",
         "nil|321|35|71.5|34.5|15.03|10.02",
         "nil|321|35|66.5|36|5.01|10.02",
         "nil|321|35|71.5|36|10.02|6.68",
         "nil|321|35|67|37.5|5.01|3.34",
         "nil|321|35|67|38|10.02|3.34",
         "nil|321|35|67|38.5|15.03|10.02",
         "nil|321|35|67|52.5|10.02|6.68",
         "nil|321|35|52.5|75.5|5.01|3.34",
       },
    },
  },
  [25161] = {
    Quest = [[Ogrezonians in the Mood|2|0|1|0|36]],
    Start = "2188|321|32|71.86|36.06",
    End = "2188|321|32|71.87|36.09",
    Objectives = {
      [1] = {
         "nil|321|35|72|34|10.02|3.34",
         "nil|321|35|71.5|34.5|15.03|10.02",
         "nil|321|35|71.5|36|10.02|6.68",
         "nil|321|35|67.5|38.5|10.02|10.02",
         "nil|321|35|67|51.5|10.02|13.36",
       },
      [2] = {
         "nil|321|35|72|34|10.02|3.34",
         "nil|321|35|71.5|34.5|15.03|10.02",
         "nil|321|35|71.5|36|10.02|6.68",
         "nil|321|35|67.5|38.5|10.02|10.02",
         "nil|321|35|67|51.5|10.02|13.36",
       },
    },
  },
  [25162] = {
    Quest = [[Elemental Goo|2|0|1|0|36]],
    Start = "2188|321|32|71.87|36.07",
    End = "2188|321|32|71.85|36.08",
    Objectives = {
      [1] = {
         "nil|606|35|65.5|18.5|10.02|3.34",
         "nil|606|35|58.5|19|15.03|3.34",
         "nil|606|35|65|19|15.03|3.34",
         "nil|606|35|58.5|19.5|20.04|3.34",
         "nil|606|35|63|19.5|35.07|3.34",
         "nil|606|35|58.5|20|85.17|3.34",
         "nil|606|35|58.5|20.5|90.18|6.68",
         "nil|606|35|58.5|21.5|95.19|3.34",
         "nil|606|35|58.5|22|100.2|3.34",
         "nil|606|35|58.5|22.5|30.06|3.34",
         "nil|606|35|63|22.5|60.12|3.34",
         "nil|606|35|63.5|23|55.11|3.34",
         "nil|606|35|64|23.5|50.1|10.02",
         "nil|606|35|64|25|45.09|3.34",
         "nil|606|35|64|25.5|20.04|3.34",
         "nil|606|35|64.5|26|10.02|3.34",
         "nil|606|35|59.5|31|10.02|3.34",
         "nil|606|35|60|31.5|10.02|3.34",
         "nil|606|35|60.5|32|10.02|3.34",
         "nil|606|35|61|32.5|10.02|6.68",
         "nil|606|35|61.5|33.5|5.01|3.34",
         "nil|606|35|24.5|35|5.01|3.34",
         "nil|606|35|10.5|36|15.03|6.68",
         "nil|606|35|26|38|15.03|3.34",
         "nil|606|35|33.5|38|20.04|3.34",
         "nil|606|35|26|38.5|20.04|3.34",
         "nil|606|35|33|38.5|5.01|3.34",
         "nil|606|35|26|39|70.14|3.34",
         "nil|606|35|26.5|39.5|40.08|3.34",
         "nil|606|35|27|40|30.06|3.34",
         "nil|606|35|27|40.5|25.05|3.34",
         "nil|606|35|12|41|5.01|3.34",
         "nil|606|35|27|41|20.04|3.34",
         "nil|606|35|27|41.5|15.03|3.34",
         "nil|606|35|22|59.5|5.01|3.34",
         "nil|606|35|32|60.5|5.01|10.02",
         "nil|606|35|40|61|10.02|6.68",
         "nil|606|35|40|62|5.01|3.34",
         "nil|606|35|32.5|62.5|5.01|10.02",
         "nil|606|35|39|63.5|5.01|6.68",
         "nil|606|35|60.5|77|10.02|6.68",
         "nil|606|35|60|78|15.03|3.34",
         "nil|606|35|59.5|78.5|20.04|3.34",
         "nil|606|35|58|79|35.07|3.34",
         "nil|606|35|57.5|79.5|35.07|16.7",
         "nil|606|35|58|82|30.06|3.34",
         "nil|606|35|58|82.5|25.05|6.68",
         "nil|606|35|58|83.5|20.04|3.34",
         "nil|606|35|58|84|15.03|3.34",
       },
    },
  },
  [25285] = {
    Quest = [[In and Out|0|0|1|25289|0]],
  },
  [25289] = {
    Quest = [[One Step Forward...|0|0|1|25295|0]],
  },
  [25295] = {
    Quest = [[Press Fire|0|0|1|0|0]],
  },
  [26153] = {
    Quest = [[Penny's Pumpkin Pancakes|1|0|10|0|5]],
    Start = "2511|301|32|50.62|71.71",
    End = "2511|301|32|50.6|71.71",
    Objectives = {
      [1] = {
         "nil|301|35|54|4.5|20.04|3.34",
         "nil|301|35|53.5|5|25.05|3.34",
         "nil|301|35|53|5.5|35.07|10.02",
         "nil|301|35|52.5|7|40.08|3.34",
         "nil|301|35|52|7.5|50.1|13.36",
         "nil|301|35|52|9.5|45.09|3.34",
         "nil|301|35|52.5|10|35.07|10.02",
         "nil|301|35|53|11.5|30.06|3.34",
         "nil|301|35|53.5|12|25.05|3.34",
         "nil|301|35|54|12.5|15.03|3.34",
       },
    },
  },
  [26177] = {
    Quest = [[Feeling Crabby?|1|0|10|0|5]],
    Start = "2511|301|32|50.61|71.71",
    End = "2511|301|32|50.61|71.73",
    Objectives = {
      [1] = {
         "nil|301|35|59.5|44|10.02|6.68",
         "nil|301|35|59.5|45|15.03|3.34",
         "nil|301|35|60|45.5|15.03|3.34",
         "nil|301|35|60.5|46|15.03|3.34",
         "nil|301|35|61|46.5|15.03|6.68",
         "nil|301|35|61.5|47.5|15.03|10.02",
         "nil|301|35|70.5|48.5|15.03|3.34",
         "nil|301|35|70|49|20.04|3.34",
         "nil|301|35|69.5|49.5|25.05|3.34",
         "nil|301|35|69.5|50|20.04|3.34",
         "nil|301|35|69.5|50.5|15.03|3.34",
         "nil|301|35|69|51|10.02|3.34",
         "nil|301|35|63.5|51.5|15.03|3.34",
         "nil|301|35|68.5|51.5|10.02|3.34",
         "nil|301|35|63|52|25.05|3.34",
         "nil|301|35|67|52|20.04|3.34",
         "nil|301|35|62.5|52.5|65.13|3.34",
         "nil|301|35|62|53|70.14|3.34",
         "nil|301|35|62|53.5|15.03|3.34",
         "nil|301|35|65|53.5|40.08|3.34",
         "nil|301|35|62|54|10.02|3.34",
         "nil|301|35|65.5|54|25.05|3.34",
         "nil|301|35|62|54.5|5.01|13.36",
         "nil|301|35|66|54.5|15.03|3.34",
         "nil|301|35|66|55|10.02|16.7",
         "nil|301|35|61.5|56.5|10.02|10.02",
         "nil|301|35|66|57.5|5.01|16.7",
         "nil|301|35|61|58|10.02|3.34",
         "nil|301|35|60.5|58.5|10.02|3.34",
         "nil|301|35|59.5|59|15.03|3.34",
         "nil|301|35|47|59.5|10.02|3.34",
         "nil|301|35|59|59.5|20.04|3.34",
         "nil|301|35|47|60|15.03|3.34",
         "nil|301|35|58.5|60|25.05|3.34",
         "nil|301|35|47|60.5|20.04|3.34",
         "nil|301|35|58|60.5|25.05|3.34",
         "nil|301|35|47.5|61|15.03|3.34",
         "nil|301|35|58|61|20.04|3.34",
         "nil|301|35|48|61.5|15.03|10.02",
         "nil|301|35|58|61.5|15.03|3.34",
         "nil|301|35|67|61.5|5.01|3.34",
         "nil|301|35|57.5|62|15.03|3.34",
         "nil|301|35|67|62|10.02|13.36",
         "nil|301|35|57|62.5|20.04|3.34",
         "nil|301|35|48.5|63|10.02|10.02",
         "nil|301|35|56.5|63|20.04|3.34",
         "nil|301|35|56|63.5|25.05|3.34",
         "nil|301|35|55.5|64|25.05|3.34",
         "nil|301|35|48.5|64.5|5.01|13.36",
         "nil|301|35|55|64.5|30.06|3.34",
         "nil|301|35|54.5|65|30.06|3.34",
         "nil|301|35|53.5|65.5|30.06|3.34",
         "nil|301|35|70|65.5|10.02|13.36",
         "nil|301|35|53.5|66|25.05|3.34",
         "nil|301|35|48|66.5|10.02|10.02",
         "nil|301|35|53.5|66.5|20.04|3.34",
         "nil|301|35|47.5|68|10.02|3.34",
         "nil|301|35|47|68.5|10.02|3.34",
         "nil|301|35|46.5|69|10.02|6.68",
         "nil|301|35|46|70|15.03|3.34",
         "nil|301|35|45.5|70.5|15.03|3.34",
         "nil|301|35|44.5|71|20.04|3.34",
         "nil|301|35|44|71.5|20.04|6.68",
         "nil|301|35|55|72|15.03|13.36",
         "nil|301|35|43.5|72.5|20.04|3.34",
         "nil|301|35|43.5|73|15.03|6.68",
         "nil|301|35|55.5|74|15.03|6.68",
         "nil|301|35|56|75|10.02|3.34",
         "nil|301|35|56.5|75.5|10.02|3.34",
         "nil|301|35|56.5|76|15.03|3.34",
         "nil|301|35|56.5|76.5|20.04|6.68",
         "nil|301|35|57|77.5|15.03|3.34",
         "nil|301|35|57.5|78|10.02|3.34",
       },
    },
  },
  [26183] = {
    Quest = [[The King's Cider|1|0|10|0|5]],
    Start = "2511|301|32|50.62|71.7",
    End = "2511|301|32|50.61|71.73",
    Objectives = {
      [1] = {
         "nil|301|35|62|34.5|5.01|3.34",
         "nil|301|35|58|42.5|5.01|10.02",
         "nil|301|35|49|50.5|5.01|6.68",
         "nil|301|35|66.5|51|5.01|6.68",
         "nil|301|35|57|55.5|5.01|10.02",
         "nil|301|35|72.5|55.5|5.01|3.34",
         "nil|301|35|59.5|58.5|10.02|3.34",
         "nil|301|35|65|61.5|10.02|6.68",
         "nil|301|35|53.5|63|10.02|6.68",
         "nil|301|35|72|67.5|5.01|6.68",
         "nil|301|35|54.5|73.5|10.02|6.68",
         "nil|301|35|43.5|74.5|10.02|6.68",
         "nil|301|35|49.5|78.5|10.02|3.34",
         "nil|301|35|51.5|81|5.01|6.68",
         "nil|301|35|48.5|83|10.02|3.34",
       },
    },
  },
  [26190] = {
    Quest = [[A Fisherman's Feast|1|0|10|0|5]],
    Start = "2511|301|32|50.61|71.7",
    End = "2511|301|32|50.62|71.71",
    Objectives = {
      [1] = {
         "nil|301|35|62|15|5.01|6.68",
         "nil|301|35|26|20|5.01|6.68",
         "nil|301|35|71.5|22.5|5.01|3.34",
         "nil|301|35|51|26|10.02|3.34",
         "nil|301|35|69|40.5|5.01|6.68",
         "nil|301|35|56|41|10.02|3.34",
         "nil|301|35|55.5|41.5|15.03|10.02",
         "nil|301|35|70.5|43.5|5.01|6.68",
         "nil|301|35|26|46.5|5.01|3.34",
         "nil|301|35|62.5|50|5.01|6.68",
         "nil|301|35|74|50|5.01|3.34",
         "nil|301|35|46|58|10.02|3.34",
         "nil|301|35|68.5|64.5|10.02|10.02",
         "nil|301|35|54.5|68|5.01|10.02",
         "nil|301|35|54|69.5|10.02|20.04",
       },
    },
  },
  [26192] = {
    Quest = [[Orphans Like Cookies Too!|1|0|10|0|5]],
    Start = "2511|301|32|50.62|71.71",
    End = "2511|301|32|50.62|71.72",
    Objectives = {
      [1] = {
         "nil|301|35|65.5|31.5|5.01|6.68",
         "nil|301|35|77.5|53|5.01|3.34",
         "nil|301|35|64.5|71|5.01|10.02",
         "nil|301|35|41|83|5.01|6.68",
         "nil|301|35|50.5|95.5|10.02|3.34",
       },
    },
  },
  [26220] = {
    Quest = [[Everything Is Better with Bacon|2|0|10|0|5]],
    Start = "2528|321|32|56.56|62.66",
    End = "2528|321|32|56.56|62.66",
    Objectives = {
      [1] = {
         "nil|4|35|43|13|10.02|3.34",
         "nil|4|35|48|13|5.01|3.34",
         "nil|4|35|42.5|13.5|20.04|3.34",
         "nil|4|35|47.5|13.5|10.02|3.34",
         "nil|4|35|42|14|30.06|3.34",
         "nil|4|35|47|14|15.03|3.34",
         "nil|4|35|41|14.5|80.16|10.02",
         "nil|4|35|41.5|16|80.16|3.34",
         "nil|4|35|45.5|16.5|40.08|3.34",
         "nil|4|35|46|17|35.07|3.34",
         "nil|4|35|46.5|17.5|30.06|6.68",
         "nil|4|35|47|18.5|25.05|3.34",
       },
    },
  },
  [26226] = {
    Quest = [[Crawfish Creole|2|0|10|0|5]],
    Start = "2528|321|32|56.56|62.66",
    End = "2528|321|32|56.55|62.66",
    Objectives = {
      [1] = {
         "nil|321|35|71.5|37.5|40.08|6.68",
         "nil|321|35|71.5|38.5|30.06|3.34",
         "nil|321|35|62|39|10.02|6.68",
         "nil|321|35|71.5|39|25.05|3.34",
         "nil|321|35|71.5|39.5|20.04|3.34",
         "nil|321|35|71|40|25.05|3.34",
         "nil|321|35|70.5|40.5|10.02|3.34",
         "nil|321|35|66|41|50.1|3.34",
         "nil|321|35|64.5|41.5|60.12|6.68",
         "nil|321|35|64.5|42.5|55.11|3.34",
         "nil|321|35|64|43|55.11|3.34",
         "nil|321|35|63.5|43.5|60.12|3.34",
         "nil|321|35|62.5|44|45.09|3.34",
         "nil|321|35|45|44.5|20.04|3.34",
         "nil|321|35|64.5|44.5|20.04|3.34",
         "nil|321|35|44|45|35.07|3.34",
         "nil|321|35|65|45|10.02|3.34",
         "nil|321|35|44|45.5|40.08|3.34",
         "nil|321|35|45|46|35.07|3.34",
         "nil|321|35|45.5|46.5|30.06|3.34",
         "nil|321|35|46|47|25.05|3.34",
         "nil|321|35|46.5|47.5|20.04|3.34",
         "nil|321|35|47|48|10.02|13.36",
         "nil|321|35|47|50|15.03|10.02",
         "nil|321|35|56|52|5.01|6.68",
         "nil|321|35|57.5|55|5.01|6.68",
         "nil|321|35|30.5|61.5|20.04|3.34",
         "nil|321|35|31.5|62|20.04|3.34",
         "nil|321|35|26|63.5|5.01|3.34",
         "nil|321|35|30|66|15.03|3.34",
         "nil|321|35|28|66.5|15.03|3.34",
         "nil|321|35|35.5|67|5.01|3.34",
         "nil|321|35|33|70|10.02|3.34",
         "nil|321|35|33|70.5|15.03|3.34",
         "nil|321|35|33.5|71|15.03|3.34",
         "nil|321|35|34|71.5|25.05|3.34",
         "nil|321|35|34|72|15.03|3.34",
         "nil|321|35|34|72.5|10.02|3.34",
         "nil|321|35|34|73|5.01|10.02",
         "nil|321|35|34|74.5|10.02|3.34",
         "nil|321|35|34|75|15.03|3.34",
         "nil|321|35|34|75.5|30.06|3.34",
         "nil|321|35|34|76|20.04|3.34",
         "nil|321|35|34|76.5|15.03|3.34",
         "nil|321|35|34|77|10.02|6.68",
         "nil|321|35|36|81|25.05|3.34",
         "nil|321|35|35.5|81.5|40.08|3.34",
         "nil|321|35|36|82|30.06|3.34",
         "nil|321|35|36.5|82.5|20.04|3.34",
         "nil|321|35|37|83|10.02|13.36",
         "nil|321|35|37|85|5.01|3.34",
       },
    },
  },
  [26227] = {
    Quest = [[Careful, This Fruit Bites Back|2|0|10|0|5]],
    Start = "2528|321|32|56.57|62.67",
    End = "2528|321|32|56.56|62.66",
    Objectives = {
      [1] = {
         "nil|321|35|71|34.5|5.01|6.68",
         "nil|321|35|67.5|36.5|10.02|3.34",
         "nil|321|35|67|37|15.03|3.34",
         "nil|321|35|75.5|37|20.04|3.34",
         "nil|321|35|65.5|37.5|15.03|3.34",
         "nil|321|35|73|37.5|15.03|3.34",
         "nil|321|35|73|38|10.02|3.34",
         "nil|321|35|71.5|43|5.01|3.34",
         "nil|321|35|64|46.5|25.05|3.34",
         "nil|321|35|65|47|15.03|3.34",
         "nil|321|35|42.5|47.5|10.02|3.34",
         "nil|321|35|52|48.5|5.01|6.68",
         "nil|321|35|59|48.5|5.01|6.68",
         "nil|321|35|39|51|5.01|3.34",
         "nil|321|35|65.5|51|5.01|3.34",
         "nil|321|35|55.5|51.5|5.01|6.68",
         "nil|321|35|46|53|5.01|3.34",
         "nil|321|35|59|54|5.01|6.68",
         "nil|321|35|41|59.5|5.01|3.34",
         "nil|321|35|59|61|15.03|3.34",
         "nil|321|35|52.5|62|5.01|3.34",
         "nil|321|35|57|62|10.02|3.34",
         "nil|321|35|57|62.5|5.01|3.34",
         "nil|321|35|41|66|5.01|3.34",
         "nil|321|35|43.5|68.5|5.01|6.68",
         "nil|321|35|36.5|72|5.01|3.34",
         "nil|321|35|44.5|73.5|10.02|6.68",
         "nil|321|35|40|75|5.01|6.68",
         "nil|321|35|50.5|75|5.01|10.02",
         "nil|321|35|50.5|76.5|10.02|3.34",
         "nil|321|35|50.5|77|15.03|3.34",
         "nil|321|35|50.5|77.5|30.06|3.34",
         "nil|321|35|42|78|5.01|3.34",
         "nil|321|35|50|78|15.03|3.34",
         "nil|321|35|49.5|78.5|15.03|3.34",
         "nil|321|35|49.5|79|10.02|10.02",
         "nil|321|35|35.5|80|5.01|3.34",
         "nil|321|35|49.5|80.5|5.01|13.36",
         "nil|321|35|39.5|82|5.01|3.34",
         "nil|321|35|49.5|86|10.02|3.34",
         "nil|321|35|38|87|5.01|3.34",
       },
    },
  },
  [26233] = {
    Quest = [[Stealing From Our Own|2|0|10|0|5]],
    Start = "2528|321|32|56.57|62.66",
    End = "2528|321|32|56.55|62.66",
    Objectives = {
      [1] = {
         "nil|321|35|27.5|60.5|5.01|3.34",
         "nil|321|35|33.5|63.5|10.02|3.34",
         "nil|321|35|33|64|20.04|3.34",
         "nil|321|35|32|64.5|35.07|3.34",
         "nil|321|35|27.5|65|5.01|3.34",
         "nil|321|35|32|65|40.08|3.34",
         "nil|321|35|32.5|65.5|35.07|3.34",
         "nil|321|35|33|66|30.06|3.34",
         "nil|321|35|33|66.5|25.05|6.68",
         "nil|321|35|32.5|67.5|30.06|3.34",
         "nil|321|35|32|68|35.07|10.02",
         "nil|321|35|33.5|69.5|20.04|3.34",
         "nil|321|35|35|70|5.01|3.34",
         "nil|321|35|36|72|5.01|10.02",
       },
    },
  },
  [26234] = {
    Quest = [[Stealing From Our Own|2|0|10|0|5]],
    Start = "2528|321|32|56.54|62.7",
    End = "2528|321|32|56.55|62.66",
    Objectives = {
      [1] = {
         "nil|321|35|36.5|78|25.05|3.34",
         "nil|321|35|36.5|78.5|45.09|3.34",
         "nil|321|35|38.5|79|25.05|3.34",
         "nil|321|35|39|79.5|20.04|3.34",
         "nil|321|35|39.5|80|10.02|3.34",
         "nil|321|35|35.5|82.5|5.01|6.68",
         "nil|321|35|35.5|83.5|10.02|3.34",
         "nil|321|35|35.5|84|15.03|3.34",
         "nil|321|35|35.5|84.5|40.08|10.02",
         "nil|321|35|35.5|86|35.07|10.02",
       },
    },
  },
  [26235] = {
    Quest = [[Even Thieves Get Hungry|2|0|10|0|5]],
    Start = "2528|321|32|56.56|62.67",
    End = "2528|321|32|56.56|62.66",
    Objectives = {
      [1] = {
         "nil|321|35|72|13|10.02|6.68",
         "nil|321|35|63.5|20.5|5.01|6.68",
         "nil|321|35|75|36|10.02|6.68",
         "nil|321|35|66|38.5|10.02|6.68",
         "nil|321|35|40.5|46|15.03|6.68",
         "nil|321|35|51|46.5|15.03|6.68",
         "nil|321|35|68|49|20.04|6.68",
         "nil|321|35|68|50|15.03|3.34",
         "nil|321|35|44|62|10.02|3.34",
         "nil|321|35|58|63.5|10.02|10.02",
         "nil|321|35|48.5|67.5|15.03|10.02",
         "nil|321|35|50|84|15.03|13.36",
       },
    },
  },
  [26414] = {
    Quest = [[Hitting a Walleye|1|0|10|0|12]],
    Start = "2601|301|32|54.92|69.5",
    End = "2601|301|32|54.93|69.39",
    Objectives = {
      [1] = {
         "nil|301|35|49.5|26|40.08|3.34",
         "nil|301|35|48.5|26.5|55.11|3.34",
         "nil|301|35|48.5|27|25.05|3.34",
         "nil|301|35|52.5|27|20.04|3.34",
         "nil|301|35|48|27.5|25.05|3.34",
         "nil|301|35|53|27.5|15.03|3.34",
         "nil|301|35|48|28|20.04|3.34",
         "nil|301|35|48|28.5|15.03|3.34",
         "nil|301|35|47.5|29|15.03|6.68",
         "nil|301|35|47.5|30|10.02|3.34",
         "nil|301|35|54.5|31.5|5.01|10.02",
         "nil|301|35|55|33|5.01|3.34",
         "nil|301|35|55|33.5|10.02|10.02",
         "nil|301|35|47|37|5.01|6.68",
         "nil|301|35|47.5|38|5.01|3.34",
         "nil|301|35|48|38.5|5.01|3.34",
         "nil|301|35|51|38.5|35.07|3.34",
         "nil|301|35|48|39|75.15|3.34",
         "nil|301|35|57|39|15.03|3.34",
         "nil|301|35|53|39.5|55.11|3.34",
         "nil|301|35|53.5|40|50.1|3.34",
         "nil|301|35|54|40.5|40.08|3.34",
         "nil|301|35|55|41|25.05|3.34",
         "nil|301|35|55.5|41.5|20.04|3.34",
       },
    },
  },
  [26415] = {
    Quest = [[Questflag for Captain's Log|0|0|0|0|0]],
  },
  [26420] = {
    Quest = [[Diggin' For Worms|1|0|10|0|12]],
    Start = "2601|301|32|54.92|69.5",
    End = "2601|301|32|54.93|69.39",
    Objectives = {
      [1] = {
         "nil|301|35|61.5|6.5|20.04|3.34",
         "nil|301|35|60|7|20.04|3.34",
         "nil|301|35|60|7.5|15.03|3.34",
         "nil|301|35|60|8|5.01|3.34",
         "nil|301|35|64.5|8.5|5.01|3.34",
         "nil|301|35|59|9.5|5.01|3.34",
         "nil|301|35|58.5|10|10.02|13.36",
         "nil|301|35|58|12|10.02|6.68",
         "nil|301|35|57.5|13|15.03|6.68",
         "nil|301|35|57.5|14|10.02|3.34",
         "nil|301|35|62|14|20.04|6.68",
         "nil|301|35|57|14.5|15.03|6.68",
         "nil|301|35|62|15|15.03|3.34",
         "nil|301|35|56.5|15.5|15.03|3.34",
         "nil|301|35|62|15.5|10.02|3.34",
         "nil|301|35|56.5|16|10.02|6.68",
         "nil|301|35|61.5|16|10.02|10.02",
         "nil|301|35|56|17|15.03|3.34",
         "nil|301|35|55.5|17.5|20.04|6.68",
         "nil|301|35|55.5|18.5|25.05|3.34",
         "nil|301|35|55.5|19|30.06|3.34",
         "nil|301|35|55.5|19.5|45.09|10.02",
         "nil|301|35|55.5|21|30.06|3.34",
       },
    },
  },
  [26442] = {
    Quest = [[Rock Lobster|1|0|10|0|12]],
    Start = "2601|301|32|54.93|69.4",
    End = "2601|301|32|54.93|69.39",
    Objectives = {
      [1] = {
         "nil|301|35|17|25.5|5.01|3.34",
         "nil|301|35|22.5|27.5|5.01|13.36",
         "nil|301|35|22|29.5|10.02|3.34",
         "nil|301|35|21.5|30|15.03|3.34",
         "nil|301|35|19|30.5|40.08|3.34",
         "nil|301|35|19|31|15.03|3.34",
         "nil|301|35|20.5|36|10.02|6.68",
         "nil|301|35|26|37|10.02|3.34",
         "nil|301|35|23|39|5.01|3.34",
         "nil|301|35|19|42|10.02|6.68",
         "nil|301|35|22|47.5|5.01|3.34",
         "nil|301|35|22|48|10.02|3.34",
         "nil|301|35|22|48.5|5.01|3.34",
         "nil|301|35|24.5|49|15.03|3.34",
         "nil|301|35|21|51|5.01|10.02",
       },
    },
  },
  [26451] = {
    Quest = [[Gurubashi Challenge: Free-For-All Arena Combat|0|0|30|0|0]],
    Start = "2613|673|32|46.25|28.1",
    End = "2613|673|32|46.25|28.09",
    Objectives = {
      [1] = {
         "nil|673|35|46|26|10.02|10.02",
       },
    },
  },
  [26452] = {
    Quest = [[Gurubashi Challenge|0|0|30|0|0]],
    Start = "2613|673|32|46.25|28.1",
    End = "2613|673|32|46.25|28.09",
    Objectives = {
      [1] = {
         "nil|673|35|46|25.5|10.02|13.36",
       },
    },
  },
  [26488] = {
    Quest = [[Big Gulp|1|0|10|0|12]],
    Start = "2601|301|32|54.93|69.39",
    End = "2601|301|32|54.92|69.51",
    Objectives = {
      [1] = {
         "nil|301|35|73.5|79|10.02|6.68",
         "nil|301|35|74|80|5.01|3.34",
         "nil|301|35|75|82|5.01|3.34",
         "nil|301|35|75|82.5|10.02|26.72",
         "nil|301|35|66|87|5.01|3.34",
         "nil|301|35|66|87.5|10.02|3.34",
         "nil|301|35|66|88|15.03|3.34",
         "nil|301|35|66|88.5|20.04|3.34",
         "nil|301|35|66.5|89|15.03|10.02",
         "nil|301|35|67|90.5|10.02|3.34",
         "nil|301|35|67.5|91|10.02|3.34",
         "nil|301|35|68|91.5|10.02|3.34",
         "nil|301|35|68.5|92|15.03|6.68",
       },
    },
  },
  [26536] = {
    Quest = [[Thunder Falls|1|0|10|0|12]],
    Start = "2601|301|32|54.93|69.39",
    End = "2601|301|32|54.92|69.52",
    Objectives = {
      [1] = {
         "nil|30|35|22|58.5|45.09|3.34",
         "nil|30|35|22.5|59|45.09|3.34",
         "nil|30|35|25.5|59.5|15.03|3.34",
       },
    },
  },
  [26543] = {
    Quest = [[Clammy Hands|2|0|10|0|12]],
    Start = "2646|321|32|65.76|40.83",
    End = "2646|321|32|65.74|40.84",
    Objectives = {
      [1] = {
         "nil|4|35|58|4|10.02|10.02",
         "nil|4|35|57.5|5.5|20.04|3.34",
         "nil|4|35|57|6|25.05|3.34",
         "nil|4|35|56.5|6.5|30.06|3.34",
         "nil|4|35|56.5|7|35.07|10.02",
         "nil|4|35|56|8.5|40.08|10.02",
         "nil|4|35|56|10|35.07|3.34",
         "nil|4|35|56.5|10.5|30.06|3.34",
         "nil|4|35|57|11|25.05|13.36",
         "nil|4|35|57.5|13|15.03|3.34",
       },
    },
  },
  [26556] = {
    Quest = [[No Dumping Allowed|2|0|10|0|12]],
    Start = "2646|321|32|65.75|40.84",
    End = "2646|321|32|65.75|40.84",
    Objectives = {
      [1] = {
         "nil|321|35|37|79|20.04|10.02",
         "nil|321|35|37|80.5|25.05|3.34",
         "nil|321|35|36.5|81|30.06|3.34",
         "nil|321|35|36|81.5|35.07|6.68",
         "nil|321|35|37|82.5|25.05|3.34",
         "nil|321|35|37.5|83|20.04|3.34",
         "nil|321|35|38|83.5|15.03|10.02",
       },
    },
  },
  [26557] = {
    Quest = [[A Staggering Effort|2|0|10|0|12]],
    Start = "2646|321|32|65.76|40.84",
    End = "2646|321|32|65.75|40.85",
    Objectives = {
      [1] = {
         "nil|321|35|47|46|15.03|3.34",
         "nil|321|35|43|46.5|15.03|3.34",
         "nil|321|35|46.5|46.5|20.04|3.34",
         "nil|321|35|43.5|47|50.1|3.34",
         "nil|321|35|44|47.5|45.09|3.34",
         "nil|321|35|45.5|48|25.05|3.34",
       },
    },
  },
  [26572] = {
    Quest = [[A Golden Opportunity|2|0|10|0|12]],
    Start = "2646|321|32|65.75|40.85",
    End = "2646|321|32|65.73|40.84",
    Objectives = {
      [1] = {
         "nil|4|35|39|23|15.03|3.34",
         "nil|4|35|39|23.5|40.08|3.34",
         "nil|4|35|38.5|24|45.09|10.02",
         "nil|4|35|38.5|25.5|40.08|3.34",
         "nil|4|35|38.5|26|25.05|3.34",
         "nil|4|35|38.5|26.5|20.04|3.34",
         "nil|4|35|38.5|27|15.03|10.02",
       },
    },
  },
  [26588] = {
    Quest = [[A Furious Catch|2|0|10|0|12]],
    Start = "2646|321|32|65.75|40.84",
    End = "2646|321|32|65.75|40.84",
    Objectives = {
      [1] = {
         "nil|4|35|36.5|7|5.01|36.74",
         "nil|4|35|37|13|5.01|6.68",
         "nil|4|35|37|14|10.02|16.7",
       },
    },
  },
  [27555] = {
    Quest = [[Fiona's Lucky Charm|0|0|39|0|0]],
  },
  [27556] = {
    Quest = [[Gidwin's Weapon Oil|0|0|39|0|0]],
  },
  [27557] = {
    Quest = [[Tarenar's Talisman|0|0|39|0|0]],
  },
  [27558] = {
    Quest = [[Pamela's Doll|0|0|39|0|0]],
  },
  [27559] = {
    Quest = [[Vex'tul's Armbands|0|0|39|0|0]],
  },
  [27560] = {
    Quest = [[Argus' Journal|0|0|39|0|0]],
  },
  [27561] = {
    Quest = [[Rimblat's Stone|0|0|39|0|0]],
  },
  [27562] = {
    Quest = [[Beezil's Cog|0|0|39|0|0]],
  },
  [27675] = {
    Quest = [[Forged Documents|1|0|1|0|0]],
    End = "3039|301|32|60.87|70.89",
    Objectives = {
      [1] = {
         "nil|504|35|40|32|5.01|3.34",
       },
    },
  },
  [27686] = {
    Quest = [[Forged Documents|2|0|1|0|0]],
    End = "3043|321|32|56.41|61.14",
    Objectives = {
      [1] = {
         "nil|321|35|41.5|47.5|15.03|3.34",
         "nil|321|35|39.5|48|25.05|3.34",
         "nil|321|35|39|48.5|15.03|3.34",
       },
    },
  },
  [27841] = {
    Quest = [[The Grateful Dead|0|0|1|0|39]],
  },
  [27846] = {
    Quest = [[The Grateful Dead|0|0|1|0|39]],
  },
  [28617] = {
    Quest = [[Flower Power|0|0|20|28744|0]],
    Start = "3229|24|32|33.58|49.29",
    End = "3229|24|32|33.58|49.29",
    Objectives = {
      [1] = {
         "nil|24|35|33.5|49|5.01|3.34",
       },
    },
  },
  [28733] = {
    Quest = [[Basic Botany|0|0|20|28617|0]],
    Start = "3229|24|32|33.54|49.29",
    End = "3229|24|32|33.58|49.29",
    Objectives = {
      [1] = {
         "nil|24|35|33.5|49|5.01|3.34",
       },
    },
  },
  [28744] = {
    Quest = [[Ghouls Hate My Grains|0|0|20|28747|0]],
    Start = "3229|24|32|33.58|49.29",
    End = "3229|24|32|33.58|49.29",
    Objectives = {
      [1] = {
         "nil|24|35|33.5|49|5.01|3.34",
       },
    },
  },
  [28747] = {
    Quest = [[Someone Setup the Pumpkin Bomb|0|0|20|28748|0]],
    Start = "3229|24|32|33.58|49.29",
    End = "3229|24|32|33.58|49.29",
    Objectives = {
      [1] = {
         "nil|24|35|33.5|49|5.01|3.34",
       },
    },
  },
  [28748] = {
    Quest = [[Lawn of the Dead|0|0|20|0|0]],
    Start = "3229|24|32|33.58|49.29",
    End = "3229|24|32|33.58|49.29",
    Objectives = {
      [1] = {
         "nil|24|35|33.5|49|5.01|3.34",
       },
    },
  },
  [28751] = {
    Quest = [[Tending the Garden|0|0|20|0|0]],
    Start = "3229|24|32|33.57|49.31",
  },
  [28752] = {
    Quest = [[Unstoppable Onslaught|0|0|20|0|0]],
  },
  [28775] = {
    Quest = [[Broken Serpent Figurine|0|0|1|0|36]],
    Objectives = {
      [1] = {
         "nil|321|35|73|36.5|5.01|3.34",
         "nil|321|35|67|38.5|10.02|13.36",
         "nil|321|35|67|40.5|5.01|3.34",
         "nil|321|35|40|46|10.02|10.02",
         "nil|321|35|39.5|47.5|10.02|10.02",
         "nil|321|35|67.5|52.5|5.01|6.68",
         "nil|321|35|52.5|75|5.01|3.34",
         "nil|321|35|52|75.5|10.02|10.02",
         "nil|321|35|48.5|82|10.02|6.68",
       },
      [2] = {
         "nil|321|35|75.5|36.5|10.02|6.68",
         "nil|321|35|67.5|38.5|5.01|6.68",
         "nil|321|35|39.5|48.5|10.02|3.34",
         "nil|321|35|39.5|49|15.03|3.34",
         "nil|321|35|40|49.5|10.02|3.34",
         "nil|321|35|52.5|75.5|5.01|3.34",
         "nil|321|35|45|77.5|5.01|3.34",
       },
    },
  },
  [28776] = {
    Quest = [[Broken Earthen Figurine|0|0|1|0|36]],
    Objectives = {
      [1] = {
         "nil|301|35|66|26.5|5.01|3.34",
         "nil|301|35|61.5|30.5|20.04|3.34",
         "nil|301|35|61.5|31|25.05|3.34",
         "nil|301|35|61|31.5|30.06|3.34",
         "nil|301|35|60.5|32|30.06|3.34",
         "nil|301|35|60|32.5|30.06|3.34",
         "nil|301|35|61|33|15.03|3.34",
         "nil|301|35|66.5|65|5.01|3.34",
         "nil|301|35|62|74|10.02|3.34",
         "nil|301|35|61.5|74.5|15.03|13.36",
         "nil|301|35|62|76.5|15.03|3.34",
         "nil|301|35|62.5|77|10.02|3.34",
         "nil|301|35|63|77.5|5.01|10.02",
         "nil|301|35|63.5|79|5.01|13.36",
       },
      [2] = {
         "nil|301|35|62.5|36.5|20.04|6.68",
         "nil|301|35|63|37.5|15.03|3.34",
         "nil|301|35|61.5|74.5|10.02|10.02",
       },
      [3] = {
         "nil|301|35|62|30.5|5.01|3.34",
         "nil|301|35|62.5|36|20.04|10.02",
         "nil|301|35|63|37.5|15.03|3.34",
         "nil|301|35|61.5|74.5|10.02|10.02",
       },
    },
  },
  [28777] = {
    Quest = [[Broken Owl Figurine|0|0|1|0|36]],
    Objectives = {
      [1] = {
         "nil|321|35|73|37|5.01|3.34",
         "nil|321|35|67.5|39|5.01|3.34",
         "nil|321|35|40|46|10.02|10.02",
         "nil|321|35|39.5|47.5|15.03|3.34",
         "nil|321|35|39|48|20.04|6.68",
         "nil|321|35|39.5|49|15.03|3.34",
         "nil|321|35|67|49.5|5.01|23.38",
         "nil|321|35|52.5|75.5|5.01|6.68",
       },
      [2] = {
         "nil|321|35|75.5|36.5|10.02|6.68",
         "nil|321|35|67.5|39|5.01|3.34",
         "nil|321|35|39|48.5|15.03|3.34",
         "nil|321|35|39.5|49|15.03|3.34",
         "nil|321|35|40|49.5|10.02|3.34",
         "nil|321|35|52.5|75.5|5.01|6.68",
         "nil|321|35|44.5|78|5.01|3.34",
       },
    },
  },
  [28778] = {
    Quest = [[Broken Boar Figurine|0|0|1|0|36]],
    Objectives = {
      [1] = {
         "nil|321|35|73|36.5|15.03|3.34",
         "nil|321|35|74.5|37|15.03|3.34",
         "nil|321|35|67|38.5|10.02|3.34",
         "nil|321|35|67.5|43|10.02|3.34",
         "nil|321|35|70|44|10.02|3.34",
         "nil|321|35|40.5|46|5.01|6.68",
         "nil|321|35|55|46|5.01|3.34",
         "nil|321|35|39.5|48|5.01|6.68",
         "nil|321|35|69.5|48|5.01|3.34",
         "nil|321|35|48|62.5|5.01|3.34",
         "nil|321|35|51.5|75|15.03|3.34",
         "nil|321|35|48|75.5|50.1|3.34",
         "nil|321|35|49|76|40.08|3.34",
         "nil|321|35|49.5|81|5.01|6.68",
         "nil|321|35|49|82|10.02|3.34",
         "nil|321|35|48.5|82.5|10.02|3.34",
         "nil|321|35|48|83|15.03|6.68",
       },
      [2] = {
         "nil|321|35|75.5|37|15.03|3.34",
         "nil|321|35|67.5|38.5|5.01|3.34",
         "nil|321|35|40.5|49.5|5.01|3.34",
         "nil|321|35|52.5|75.5|5.01|3.34",
         "nil|321|35|44.5|77.5|10.02|3.34",
       },
      [3] = {
         "nil|321|35|73|36.5|5.01|3.34",
         "nil|321|35|67.5|38.5|5.01|6.68",
         "nil|321|35|40.5|46|5.01|6.68",
         "nil|321|35|55|47.5|5.01|3.34",
         "nil|321|35|39.5|48|5.01|6.68",
         "nil|321|35|70|48|5.01|3.34",
         "nil|321|35|54|73|5.01|3.34",
         "nil|321|35|52|75|10.02|10.02",
         "nil|321|35|49|83|5.01|3.34",
       },
    },
  },
  [28798] = {
    Quest = [[Waters of Elune|0|0|1|0|43]],
  },
  [28799] = {
    Quest = [[Might of the Earthen|0|0|1|0|43]],
  },
  [28800] = {
    Quest = [[Whispers of the Djinn|0|0|1|0|43]],
  },
  [28801] = {
    Quest = [[Tol'vir Heiroglyphics|0|0|1|0|43]],
  },
  [28802] = {
    Quest = [[Map of the Architects|0|0|1|0|43]],
  },
  [28803] = {
    Quest = [[Vengeance of the Wildhammer|0|0|1|0|43]],
  },
  [28804] = {
    Quest = [[Dark Iron Contingency Plan|0|0|1|0|43]],
  },
  [28878] = {
    Quest = [[A Winter Veil Gift|0|0|10|0|15]],
  },
  [28879] = {
    Quest = [[Back To The Orphanage|0|0|70|0|3]],
    Start = "1812|504|32|44.57|46.13",
    End = "1809|504|32|49.56|62.84",
  },
  [28880] = {
    Quest = [[Back To The Orphanage|0|0|70|0|3]],
  },
  [28910] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [28911] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [28912] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [28913] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [28914] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [28915] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [28916] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [28917] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [28918] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [28919] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [28920] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [28921] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [28922] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [28923] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [28924] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [28925] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [28926] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [28927] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [28928] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [28929] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [28930] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [28931] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [28932] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [28933] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [28934] = {
    Quest = [[Crushing the Crown|1|0|81|0|41]],
    Start = "2065|301|32|61.6|75.2",
  },
  [28935] = {
    Quest = [[Crushing the Crown|2|0|81|0|41]],
    Start = "1995|321|32|50.85|75.27",
    End = "1995|321|32|50.76|75.24",
    Objectives = {
      [1] = {
         "nil|720|35|67|18|10.02|3.34",
         "nil|720|35|67|18.5|15.03|3.34",
         "nil|720|35|66.5|19|20.04|3.34",
         "nil|720|35|66|19.5|25.05|6.68",
         "nil|720|35|66|20.5|20.04|3.34",
         "nil|720|35|65.5|21|20.04|3.34",
         "nil|720|35|65.5|21.5|15.03|3.34",
         "nil|720|35|65.5|22|10.02|3.34",
       },
      [2] = {
         "nil|720|35|66|18|30.06|10.02",
         "nil|720|35|66|19.5|35.07|10.02",
         "nil|720|35|66|21|30.06|3.34",
       },
    },
  },
  [28943] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [28944] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [28945] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [28946] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [28947] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [28948] = {
    Quest = [[Desecrate this Fire!|0|0|1|0|15]],
  },
  [28949] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [28950] = {
    Quest = [[Honor the Flame|0|0|1|0|15]],
  },
  [28951] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28952] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28953] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28954] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28955] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28956] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28957] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28958] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28959] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28960] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28961] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28962] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28963] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28964] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28965] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28966] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28967] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28968] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28969] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28970] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28971] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28972] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28973] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28974] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28975] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28976] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28977] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28978] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28979] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28980] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28981] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28982] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28983] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28984] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28985] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28986] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28987] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28988] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28989] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28990] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28991] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28992] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28993] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28994] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28995] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28996] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28997] = {
    Quest = [[Candy Bucket|0|0|1|0|15]],
  },
  [28998] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [28999] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [29000] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [29001] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [29002] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [29003] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [29004] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [29005] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [29006] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [29007] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [29008] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [29009] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [29010] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [29011] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [29012] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [29013] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [29014] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [29016] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [29017] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [29018] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [29019] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [29020] = {
    Quest = [[Candy Bucket|0|0|1|0|25]],
  },
  [29030] = {
    Quest = [[Honor the Flame|0|0|1|0|32]],
    Start = "3278|606|32|62.85|22.72",
    End = "3279|606|32|62.83|22.8",
  },
  [29031] = {
    Quest = [[Honor the Flame|0|0|1|0|32]],
    Start = "3280|615|32|49.35|42.01",
    End = "3279|615|32|49.32|41.96",
  },
  [29032] = {
    Quest = [[Get Them While They're Young|1|0|50|29034|0]],
    Start = "228|281|32|46.65|17.72",
  },
  [29034] = {
    Quest = [[They Grow Up So Fast|1|0|50|0|0]],
    Start = "228|281|32|46.65|17.71",
    Objectives = {
      [1] = {
         "#",
       },
      [2] = {
         "nil|281|35|63.5|30.5|15.03|3.34",
         "nil|281|35|60.5|31|45.09|3.34",
         "nil|281|35|60.5|31.5|50.1|3.34",
         "nil|281|35|60.5|32|55.11|3.34",
         "nil|281|35|61.5|32.5|45.09|3.34",
         "nil|281|35|63.5|33|25.05|3.34",
         "nil|281|35|64|33.5|25.05|3.34",
         "nil|281|35|64.5|34|20.04|10.02",
         "nil|281|35|64.5|35.5|15.03|3.34",
         "nil|281|35|64|36|15.03|20.04",
         "nil|281|35|63.5|39|25.05|3.34",
         "nil|281|35|63|39.5|35.07|13.36",
         "nil|281|35|63.5|41.5|30.06|3.34",
         "nil|281|35|64|42|25.05|3.34",
         "nil|281|35|64.5|42.5|20.04|6.68",
         "nil|281|35|64.5|43.5|25.05|3.34",
         "nil|281|35|65|44|25.05|3.34",
         "nil|281|35|65.5|44.5|20.04|3.34",
         "nil|281|35|66|45|15.03|16.7",
         "nil|281|35|66|47.5|20.04|6.68",
         "nil|281|35|65.5|48.5|25.05|3.34",
         "nil|281|35|65|49|35.07|3.34",
         "nil|281|35|64|49.5|50.1|3.34",
         "nil|281|35|64|50|75.15|6.68",
         "nil|281|35|59.5|50.5|5.01|3.34",
         "nil|281|35|24|51|5.01|10.02",
         "nil|281|35|64|51|80.16|6.68",
         "nil|281|35|63.5|52|85.17|3.34",
         "nil|281|35|63|52.5|80.16|3.34",
         "nil|281|35|48.5|53|30.06|6.68",
         "nil|281|35|63|53|75.15|3.34",
         "nil|281|35|63|53.5|70.14|3.34",
         "nil|281|35|48.5|54|25.05|3.34",
         "nil|281|35|63.5|54|65.13|3.34",
         "nil|281|35|49|54.5|15.03|10.02",
         "nil|281|35|64|54.5|45.09|3.34",
         "nil|281|35|64.5|55|35.07|3.34",
         "nil|281|35|64.5|55.5|30.06|3.34",
         "nil|281|35|49|56|20.04|3.34",
         "nil|281|35|65|56|20.04|3.34",
         "nil|281|35|49|56.5|15.03|3.34",
         "nil|281|35|65|56.5|15.03|3.34",
         "nil|281|35|49|57|10.02|3.34",
         "nil|281|35|53|57|10.02|3.34",
         "nil|281|35|65|57|10.02|6.68",
         "nil|281|35|62|74.5|5.01|3.34",
         "nil|281|35|64.5|78.5|5.01|3.34",
       },
      [3] = {
         "nil|281|35|57|23|15.03|3.34",
         "nil|281|35|54.5|23.5|40.08|3.34",
         "nil|281|35|56.5|24|20.04|3.34",
         "nil|281|35|57|24.5|10.02|3.34",
         "nil|281|35|56|30|5.01|3.34",
         "nil|281|35|58|31.5|5.01|3.34",
         "nil|281|35|55|37.5|5.01|3.34",
         "nil|281|35|55|38|10.02|3.34",
         "nil|281|35|55|38.5|15.03|3.34",
         "nil|281|35|55|39|20.04|3.34",
         "nil|281|35|54.5|39.5|10.02|3.34",
         "nil|281|35|54|40|10.02|3.34",
         "nil|281|35|52.5|40.5|20.04|3.34",
         "nil|281|35|53|41|15.03|3.34",
         "nil|281|35|59|43.5|5.01|3.34",
         "nil|281|35|58.5|44|15.03|3.34",
         "nil|281|35|58.5|44.5|20.04|3.34",
         "nil|281|35|58.5|45|45.09|3.34",
         "nil|281|35|59.5|45.5|30.06|3.34",
         "nil|281|35|60|46|20.04|3.34",
         "nil|281|35|60.5|46.5|10.02|3.34",
         "nil|281|35|63.5|53|20.04|3.34",
         "nil|281|35|63.5|53.5|25.05|3.34",
         "nil|281|35|63.5|54|35.07|6.68",
         "nil|281|35|64|55|30.06|3.34",
         "nil|281|35|64.5|55.5|25.05|20.04",
         "nil|281|35|65.5|58.5|15.03|3.34",
       },
    },
  },
  [29035] = {
    Quest = [[A Cub's Cravings|1|0|50|0|0]],
  },
  [29036] = {
    Quest = [[Honor the Flame|0|0|1|0|32]],
    Start = "3281|640|32|49.39|51.35",
    End = "3279|640|32|49.4|51.36",
  },
  [29037] = {
    Quest = [['Borrowing' From the Winterfall|1|0|50|0|0]],
  },
  [29038] = {
    Quest = [[Hunting Practice|1|0|50|0|0]],
  },
  [29040] = {
    Quest = [[Cub's First Toy|1|0|50|0|0]],
  },
  [29054] = {
    Quest = [[Stink Bombs Away!|0|0|1|0|25]],
  },
  [29067] = {
    Quest = [[Elixir Specialist|0|0|75|14147|13]],
  },
  [29074] = {
    Quest = [[A Season for Celebration|0|0|1|29075|25]],
  },
  [29075] = {
    Quest = [[A Time to Gain|0|0|1|0|25]],
  },
  [29092] = {
    Quest = [[Inform the Elder|1|0|16|0|32]],
    Start = "1218|43|32|9.73|12.66",
    End = "1214|301|32|49.38|72.13",
  },
  [29093] = {
    Quest = [[Cruisin' the Chasm|1|0|10|0|3]],
    Start = "23|301|32|56.25|54.22",
  },
  [29106] = {
    Quest = [[The Biggest Diamond Ever!|1|0|10|0|3]],
    Start = "23|301|32|56.23|54.19",
  },
  [29107] = {
    Quest = [[Malfurion Has Returned!|1|0|10|0|3]],
    Start = "23|301|32|56.22|54.19",
  },
  [29117] = {
    Quest = [[Let's Go Fly a Kite|1|0|10|0|3]],
    Start = "23|381|32|43.07|77.56",
  },
  [29119] = {
    Quest = [[You Scream, I Scream...|1|0|10|0|3]],
    Start = "23|381|32|43.05|77.54",
  },
  [29144] = {
    Quest = [[Clean Up in Stormwind|0|0|1|0|25]],
  },
  [29146] = {
    Quest = [[Ridin' the Rocketway|2|0|10|0|3]],
    Start = "25|321|32|58.17|57.6",
    End = "25|181|32|50.83|74.1",
  },
  [29167] = {
    Quest = [[The Banshee Queen|2|0|10|0|3]],
    Start = "25|321|32|58.15|57.59",
  },
  [29176] = {
    Quest = [[The Fallen Chieftain|2|0|10|0|3]],
    Start = "25|321|32|58.17|57.6",
    Objectives = {
      [1] = {
         "nil|9|35|60.5|22.5|5.01|3.34",
       },
    },
  },
  [29190] = {
    Quest = [[Let's Go Fly a Kite|2|0|10|0|3]],
    Start = "25|382|32|57.48|91.6",
  },
  [29191] = {
    Quest = [[You Scream, I Scream...|2|0|10|0|3]],
    Start = "25|382|32|57.47|91.58",
  },
  [29261] = {
    Quest = [[Zul'Aman Voodoo|0|0|1|0|43]],
  },
  [29262] = {
    Quest = [[Zul'Gurub Voodoo|0|0|1|0|43]],
  },
  [29313] = {
    Quest = [[The Secret to Perfect Kimchi|1|0|10|0|5]],
    Start = "3316|381|32|49.87|36.59",
  },
  [29314] = {
    Quest = [[Remembering the Ancestors|1|0|10|0|5]],
    Start = "3316|381|32|49.95|36.58",
  },
  [29315] = {
    Quest = [[Fungus Among Us|2|0|10|0|5]],
    Start = "3317|382|32|62.22|44.54",
  },
  [29316] = {
    Quest = [[Back to Basics|1|0|10|0|5]],
    Start = "3316|381|32|49.89|36.65",
  },
  [29317] = {
    Quest = [[Fish Head|2|0|10|0|12]],
    Start = "3318|382|32|80.81|31.24",
  },
  [29318] = {
    Quest = [[Ribs for the Sentinels|1|0|10|0|5]],
    Start = "3316|381|32|49.86|36.55",
  },
  [29319] = {
    Quest = [[Tadpole Terror|2|0|10|0|12]],
    Start = "3318|382|32|80.85|31.11",
  },
  [29320] = {
    Quest = [[Like Pike?|2|0|10|0|12]],
    Start = "3318|382|32|80.94|31.24",
  },
  [29321] = {
    Quest = [[Happy as a Clam Digger|1|0|10|0|12]],
    Start = "3319|381|32|48.99|61",
  },
  [29322] = {
    Quest = [[Time for Slime|2|0|10|0|12]],
    Start = "3318|382|32|80.86|31.22",
  },
  [29323] = {
    Quest = [[Stocking Up|1|0|10|0|12]],
    Start = "3319|381|32|48.91|60.92",
  },
  [29324] = {
    Quest = [[The Sister's Pendant|1|0|10|0|12]],
    Start = "3319|381|32|48.87|60.92",
  },
  [29325] = {
    Quest = [[A Slippery Snack|1|0|10|0|12]],
    Start = "3319|381|32|48.94|60.94",
  },
  [29332] = {
    Quest = [[Lily, Oh Lily|2|0|10|0|5]],
    Start = "3317|382|32|62.26|44.36",
  },
  [29333] = {
    Quest = [[Escargot A Go-Go|2|0|10|0|5]],
    Start = "3317|382|32|62.25|44.58",
  },
  [29334] = {
    Quest = [[Roach Coach|2|0|10|0|5]],
    Start = "3317|382|32|62.27|44.59",
  },
  [29342] = {
    Quest = [[Cold Water Fishing|1|0|10|0|12]],
  },
  [29343] = {
    Quest = [[One fer the Ages|1|0|10|0|12]],
  },
  [29344] = {
    Quest = [[Fish fer Squirky|1|0|10|0|12]],
  },
  [29345] = {
    Quest = [[Pond Predators|2|0|10|0|12]],
    Start = "3322|362|32|56.1|46.74",
  },
  [29346] = {
    Quest = [[The Ring's the Thing|2|0|10|0|12]],
    Start = "3322|362|32|56.15|46.27",
    Objectives = {
      [1] = {
         "nil|362|35|38.5|51.5|5.01|3.34",
       },
    },
  },
  [29347] = {
    Quest = [[Live Bait|1|0|10|0|12]],
  },
  [29348] = {
    Quest = [[The Race to Restock|2|0|10|0|12]],
    Start = "3322|362|32|56.06|46.8",
  },
  [29349] = {
    Quest = [[Craving Crayfish|2|0|10|0|12]],
    Start = "3322|362|32|56.08|46.69",
    Objectives = {
      [1] = {
         "nil|9|35|44.5|60.5|5.01|3.34",
       },
    },
  },
  [29350] = {
    Quest = [[The Gnomish Bait-o-Matic|1|0|10|0|12]],
  },
  [29351] = {
    Quest = [[A Round for the Guards|1|0|10|0|5]],
  },
  [29352] = {
    Quest = [[A Fowl Shortage|1|0|10|0|5]],
  },
  [29353] = {
    Quest = [[Keepin' the Haggis Flowin'|1|0|10|0|5]],
  },
  [29354] = {
    Quest = [[Shiny Baubles|2|0|10|0|12]],
    Start = "3322|362|32|56.12|46.79",
  },
  [29355] = {
    Quest = [[Can't Get Enough Spice Bread|1|0|10|0|5]],
    Objectives = {
      [1] = {
         "nil|301|35|77.5|52.5|5.01|3.34",
       },
    },
  },
  [29356] = {
    Quest = [[I Need to Cask a Favor|1|0|10|0|5]],
  },
  [29357] = {
    Quest = [[Spice Bread Aplenty|1|0|10|0|5]],
    Start = "3316|381|32|49.73|36.68",
    Objectives = {
      [1] = {
         "nil|381|35|49.5|36.5|5.01|3.34",
       },
    },
  },
  [29358] = {
    Quest = [[Pining for Nuts|2|0|10|0|5]],
    Start = "3323|362|32|50.99|52.84",
  },
  [29359] = {
    Quest = [[An Old Favorite|1|0|10|0|12]],
    Start = "3319|381|32|48.89|60.98",
  },
  [29360] = {
    Quest = [[Would You Like Some Flies With That?|2|0|10|0|5]],
    Start = "3317|382|32|62.25|44.54",
  },
  [29361] = {
    Quest = [[Moat Monster!|2|0|10|0|12]],
    Start = "3318|382|32|81.06|31.19",
  },
  [29362] = {
    Quest = [["Magic" Mushrooms|2|0|10|0|5]],
    Start = "3323|362|32|51.01|52.74",
  },
  [29363] = {
    Quest = [[Mulgore Spice Bread|2|0|10|0|5]],
    Start = "3323|362|32|50.96|52.85",
    Objectives = {
      [1] = {
         "nil|362|35|51|52.5|5.01|6.68",
       },
    },
  },
  [29364] = {
    Quest = [[Corn Mash|2|0|10|0|5]],
    Start = "3323|362|32|50.84|52.97",
  },
  [29365] = {
    Quest = [[Perfectly Picked Portions|2|0|10|0|5]],
    Start = "3323|362|32|51.01|52.87",
  },
  [29371] = {
    Quest = [[A Time to Lose|0|0|1|0|25]],
  },
  [29374] = {
    Quest = [[Stink Bombs Away!|0|0|1|0|25]],
  },
  [29375] = {
    Quest = [[Clean Up in Undercity|0|0|1|0|25]],
  },
  [29376] = {
    Quest = [[A Time to Build Up|0|0|1|0|25]],
  },
  [29377] = {
    Quest = [[A Time to Break Down|0|0|1|0|25]],
  },
  [29382] = {
    Quest = [[Thanks, But No Thanks|0|0|0|0|15]],
  },
  [29383] = {
    Quest = [[Thanks, But No Thanks|0|0|0|0|15]],
  },
  [29385] = {
    Quest = [[A Winter Veil Gift|0|0|10|0|15]],
  },
  [29392] = {
    Quest = [[Missing Heirlooms|0|0|10|29398|25]],
  },
  [29393] = {
    Quest = [[Brew For Brewfest|0|0|1|0|33]],
  },
  [29394] = {
    Quest = [[Brew For Brewfest|0|0|1|0|33]],
  },
  [29396] = {
    Quest = [[A New Supplier of Souvenirs|0|0|1|0|33]],
  },
  [29397] = {
    Quest = [[A New Supplier of Souvenirs|0|0|1|0|33]],
  },
  [29398] = {
    Quest = [[Fencing the Goods|0|0|10|29399|25]],
  },
  [29399] = {
    Quest = [[Shopping Around|0|0|10|29402|25]],
  },
  [29400] = {
    Quest = [[A Season for Celebration|0|0|1|29376|25]],
  },
  [29402] = {
    Quest = [[Taking Precautions|0|0|10|29403|25]],
  },
  [29403] = {
    Quest = [[The Collector's Agent|0|0|10|29411|25]],
  },
  [29411] = {
    Quest = [[What Now?|0|0|10|0|25]],
  },
  [29415] = {
    Quest = [[Missing Heirlooms|0|0|10|29416|25]],
  },
  [29416] = {
    Quest = [[Fencing the Goods|0|0|10|29425|25]],
  },
  [29425] = {
    Quest = [[Shopping Around|0|0|10|29426|25]],
  },
  [29426] = {
    Quest = [[Taking Precautions|0|0|10|29427|25]],
  },
  [29427] = {
    Quest = [[The Collector's Agent|0|0|10|29428|25]],
  },
  [29428] = {
    Quest = [[What Now?|0|0|10|0|25]],
  },
  [29430] = {
    Quest = [[A Friend in Need|0|0|10|0|25]],
  },
  [29431] = {
    Quest = [[A Friend in Need|0|0|10|0|25]],
  },
}


function Nx.ModQuests:Load0 ()
	for key,val in pairs(ModQuests) do
		Nx.Quests[key] = val
	end
	Nx.ModQuests:Clear0()
end

function Nx.ModQuests:Clear0 ()
	ModQuests = {}
end