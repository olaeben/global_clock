import 'package:global_clock/services/world_time.dart';

class WorldTimeLocation {
  List<WorldTime> getLocations() {
    return [
      // United Kingdom
      WorldTime(url: 'Europe/London', location: 'London', flag: 'gb.png'),

      // Nigeria
      WorldTime(url: 'Africa/Lagos', location: 'Lagos', flag: 'ng.png'),

      // Egypt
      WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'eg.png'),

      // Kenya
      WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'ke.png'),

      // South Africa
      WorldTime(
          url: 'Africa/Johannesburg', location: 'Johannesburg', flag: 'za.png'),

      // Germany
      WorldTime(url: 'Europe/Berlin', location: 'Berlin', flag: 'de.png'),

      // Italy
      WorldTime(url: 'Europe/Rome', location: 'Rome', flag: 'it.png'),

      // Ukraine
      WorldTime(url: 'Europe/Kyiv', location: 'Kyiv', flag: 'ua.png'),

      // Japan
      WorldTime(url: 'Asia/Tokyo', location: 'Tokyo', flag: 'jp.png'),

      // South Korea
      WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'kr.png'),

      // Philippines
      WorldTime(url: 'Asia/Manila', location: 'Manila', flag: 'ph.png'),

      // China
      WorldTime(url: 'Asia/Shanghai', location: 'Shanghai', flag: 'cn.png'),

      // Singapore
      WorldTime(url: 'Asia/Singapore', location: 'Singapore', flag: 'sg.png'),

      // Hong Kong
      WorldTime(url: 'Asia/Hong_Kong', location: 'Hong Kong', flag: 'hk.png'),

      // Thailand
      WorldTime(url: 'Asia/Bangkok', location: 'Bangkok', flag: 'th.png'),

      // Malaysia
      WorldTime(
          url: 'Asia/Kuala_Lumpur', location: 'Kuala Lumpur', flag: 'my.png'),

      // India - Major Cities
      WorldTime(url: 'Asia/Kolkata', location: 'Kolkata', flag: 'in.png'),
      WorldTime(url: 'Asia/Mumbai', location: 'Mumbai', flag: 'in.png'),
      WorldTime(url: 'Asia/Delhi', location: 'Delhi', flag: 'in.png'),
      WorldTime(url: 'Asia/Chennai', location: 'Chennai', flag: 'in.png'),
      WorldTime(url: 'Asia/Bangalore', location: 'Bangalore', flag: 'in.png'),

      // Australia - Major Cities
      WorldTime(url: 'Australia/Sydney', location: 'Sydney', flag: 'au.png'),
      WorldTime(
          url: 'Australia/Melbourne', location: 'Melbourne', flag: 'au.png'),
      WorldTime(
          url: 'Australia/Brisbane', location: 'Brisbane', flag: 'au.png'),
      WorldTime(url: 'Australia/Perth', location: 'Perth', flag: 'au.png'),
      WorldTime(
          url: 'Australia/Adelaide', location: 'Adelaide', flag: 'au.png'),

      // Brazil - Major Cities
      WorldTime(
          url: 'America/Sao_Paulo', location: 'Sao Paulo', flag: 'br.png'),
      WorldTime(
          url: 'America/Rio_Branco', location: 'Rio Branco', flag: 'br.png'),
      WorldTime(
          url: 'America/Fortaleza', location: 'Fortaleza', flag: 'br.png'),
      WorldTime(url: 'America/Recife', location: 'Recife', flag: 'br.png'),
      WorldTime(
          url: 'America/Porto_Velho', location: 'Porto Velho', flag: 'br.png'),

      // Canada - Major Cities
      WorldTime(url: 'America/Toronto', location: 'Toronto', flag: 'ca.png'),
      WorldTime(
          url: 'America/Vancouver', location: 'Vancouver', flag: 'ca.png'),
      WorldTime(url: 'America/Montreal', location: 'Montreal', flag: 'ca.png'),
      WorldTime(url: 'America/Edmonton', location: 'Edmonton', flag: 'ca.png'),
      WorldTime(url: 'America/Winnipeg', location: 'Winnipeg', flag: 'ca.png'),

      // Mexico
      WorldTime(
          url: 'America/Mexico_City', location: 'Mexico City', flag: 'mx.png'),

      // Russia - Major Cities
      WorldTime(url: 'Europe/Moscow', location: 'Moscow', flag: 'ru.png'),
      WorldTime(
          url: 'Asia/Yekaterinburg', location: 'Yekaterinburg', flag: 'ru.png'),
      WorldTime(
          url: 'Asia/Novosibirsk', location: 'Novosibirsk', flag: 'ru.png'),
      WorldTime(
          url: 'Asia/Vladivostok', location: 'Vladivostok', flag: 'ru.png'),
      WorldTime(
          url: 'Europe/Kaliningrad', location: 'Kaliningrad', flag: 'ru.png'),

      // Indonesia
      WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'id.png'),
      WorldTime(url: 'Asia/Makassar', location: 'Makassar', flag: 'id.png'),
      WorldTime(url: 'Asia/Jayapura', location: 'Jayapura', flag: 'id.png'),

      // Saudi Arabia
      WorldTime(url: 'Asia/Riyadh', location: 'Riyadh', flag: 'sa.png'),

      // Argentina
      WorldTime(
          url: 'America/Argentina/Buenos_Aires',
          location: 'Buenos Aires',
          flag: 'ar.png'),

      // Chile
      WorldTime(url: 'America/Santiago', location: 'Santiago', flag: 'cl.png'),

      // New Zealand
      WorldTime(url: 'Pacific/Auckland', location: 'Auckland', flag: 'nz.png'),

      // South Sudan
      WorldTime(url: 'Africa/Juba', location: 'Juba', flag: 'ss.png'),

      // Afghanistan
      WorldTime(url: 'Asia/Kabul', location: 'Kabul', flag: 'af.png'),

      // Albania
      WorldTime(url: 'Europe/Tirane', location: 'Tirana', flag: 'al.png'),

      // Algeria
      WorldTime(url: 'Africa/Algiers', location: 'Algiers', flag: 'dz.png'),

      // Andorra
      WorldTime(
          url: 'Europe/Andorra', location: 'Andorra la Vella', flag: 'ad.png'),

      // Angola
      WorldTime(url: 'Africa/Luanda', location: 'Luanda', flag: 'ao.png'),

      // Antigua and Barbuda
      WorldTime(
          url: 'America/Antigua', location: 'Saint John\'s', flag: 'ag.png'),

      // Argentina
      WorldTime(
          url: 'America/Argentina/Buenos_Aires',
          location: 'Buenos Aires',
          flag: 'ar.png'),

      // Armenia
      WorldTime(url: 'Asia/Yerevan', location: 'Yerevan', flag: 'am.png'),

      // Australia
      WorldTime(url: 'Australia/Sydney', location: 'Sydney', flag: 'au.png'),

      // Austria
      WorldTime(url: 'Europe/Vienna', location: 'Vienna', flag: 'at.png'),

      // Azerbaijan
      WorldTime(url: 'Asia/Baku', location: 'Baku', flag: 'az.png'),

      // Bahamas
      WorldTime(url: 'America/Nassau', location: 'Nassau', flag: 'bs.png'),

      // Bahrain
      WorldTime(url: 'Asia/Bahrain', location: 'Manama', flag: 'bh.png'),

      // Bangladesh
      WorldTime(url: 'Asia/Dhaka', location: 'Dhaka', flag: 'bd.png'),

      // Barbados
      WorldTime(
          url: 'America/Barbados', location: 'Bridgetown', flag: 'bb.png'),

      // Belarus
      WorldTime(url: 'Europe/Minsk', location: 'Minsk', flag: 'by.png'),

      // Belgium
      WorldTime(url: 'Europe/Brussels', location: 'Brussels', flag: 'be.png'),

      // Belize
      WorldTime(url: 'America/Belize', location: 'Belize City', flag: 'bz.png'),

      // Benin
      WorldTime(
          url: 'Africa/Porto-Novo', location: 'Porto-Novo', flag: 'bj.png'),

      // Bhutan
      WorldTime(url: 'Asia/Thimphu', location: 'Thimphu', flag: 'bt.png'),

      // Bolivia
      WorldTime(url: 'America/La_Paz', location: 'Sucre', flag: 'bo.png'),

      // Bosnia and Herzegovina
      WorldTime(url: 'Europe/Sarajevo', location: 'Sarajevo', flag: 'ba.png'),

      // Botswana
      WorldTime(url: 'Africa/Gaborone', location: 'Gaborone', flag: 'bw.png'),

      // Brazil
      WorldTime(url: 'America/Sao_Paulo', location: 'Brasília', flag: 'br.png'),

      // Brunei
      WorldTime(
          url: 'Asia/Brunei', location: 'Bandar Seri Begawan', flag: 'bn.png'),

      // Bulgaria
      WorldTime(url: 'Europe/Sofia', location: 'Sofia', flag: 'bg.png'),

      // Burkina Faso
      WorldTime(
          url: 'Africa/Ouagadougou', location: 'Ouagadougou', flag: 'bf.png'),

      // Burundi
      WorldTime(url: 'Africa/Bujumbura', location: 'Gitega', flag: 'bi.png'),

      // Cabo Verde
      WorldTime(url: 'Atlantic/Cape_Verde', location: 'Praia', flag: 'cv.png'),

      // Cambodia
      WorldTime(url: 'Asia/Phnom_Penh', location: 'Phnom Penh', flag: 'kh.png'),

      // Cameroon
      WorldTime(url: 'Africa/Douala', location: 'Yaoundé', flag: 'cm.png'),

      // Central African Republic
      WorldTime(url: 'Africa/Bangui', location: 'Bangui', flag: 'cf.png'),

      // Chad
      WorldTime(url: 'Africa/Ndjamena', location: 'N\'Djamena', flag: 'td.png'),

      // Chile
      WorldTime(url: 'America/Santiago', location: 'Santiago', flag: 'cl.png'),

      // Colombia
      WorldTime(url: 'America/Bogota', location: 'Bogotá', flag: 'co.png'),

      // Comoros
      WorldTime(url: 'Indian/Comoro', location: 'Moroni', flag: 'km.png'),

      // Congo (Congo-Brazzaville)
      WorldTime(
          url: 'Africa/Brazzaville', location: 'Brazzaville', flag: 'cg.png'),

      // Costa Rica
      WorldTime(
          url: 'America/Costa_Rica', location: 'San José', flag: 'cr.png'),

      // Croatia
      WorldTime(url: 'Europe/Zagreb', location: 'Zagreb', flag: 'hr.png'),

      // Cuba
      WorldTime(url: 'America/Havana', location: 'Havana', flag: 'cu.png'),

      // Cyprus
      WorldTime(url: 'Asia/Nicosia', location: 'Nicosia', flag: 'cy.png'),

      // Czech Republic
      WorldTime(url: 'Europe/Prague', location: 'Prague', flag: 'cz.png'),

      // Denmark
      WorldTime(
          url: 'Europe/Copenhagen', location: 'Copenhagen', flag: 'dk.png'),

      // Djibouti
      WorldTime(url: 'Africa/Djibouti', location: 'Djibouti', flag: 'dj.png'),

      // Dominica
      WorldTime(url: 'America/Dominica', location: 'Roseau', flag: 'dm.png'),

      // Dominican Republic
      WorldTime(
          url: 'America/Santo_Domingo',
          location: 'Santo Domingo',
          flag: 'do.png'),

      // East Timor (Timor-Leste)
      WorldTime(url: 'Asia/Dili', location: 'Dili', flag: 'tl.png'),

      // Ecuador
      WorldTime(url: 'America/Guayaquil', location: 'Quito', flag: 'ec.png'),

      // El Salvador
      WorldTime(
          url: 'America/El_Salvador', location: 'San Salvador', flag: 'sv.png'),

      // Equatorial Guinea
      WorldTime(url: 'Africa/Malabo', location: 'Malabo', flag: 'gq.png'),

      // Eritrea
      WorldTime(url: 'Africa/Asmara', location: 'Asmara', flag: 'er.png'),

      // Estonia
      WorldTime(url: 'Europe/Tallinn', location: 'Tallinn', flag: 'ee.png'),

      // Eswatini (Swaziland)
      WorldTime(url: 'Africa/Mbabane', location: 'Mbabane', flag: 'sz.png'),

      // Ethiopia
      WorldTime(
          url: 'Africa/Addis_Ababa', location: 'Addis Ababa', flag: 'et.png'),

      // Fiji
      WorldTime(url: 'Pacific/Fiji', location: 'Suva', flag: 'fj.png'),

      // Finland
      WorldTime(url: 'Europe/Helsinki', location: 'Helsinki', flag: 'fi.png'),

      // France
      WorldTime(url: 'Europe/Paris', location: 'Paris', flag: 'fr.png'),

      // Gabon
      WorldTime(
          url: 'Africa/Libreville', location: 'Libreville', flag: 'ga.png'),

      // Gambia
      WorldTime(url: 'Africa/Banjul', location: 'Banjul', flag: 'gm.png'),

      // Georgia
      WorldTime(url: 'Asia/Tbilisi', location: 'Tbilisi', flag: 'ge.png'),

      // Ghana
      WorldTime(url: 'Africa/Accra', location: 'Accra', flag: 'gh.png'),

      // Greece
      WorldTime(url: 'Europe/Athens', location: 'Athens', flag: 'gr.png'),

      // Grenada
      WorldTime(
          url: 'America/Grenada', location: "St. George's", flag: 'gd.png'),

      // Guatemala
      WorldTime(
          url: 'America/Guatemala', location: 'Guatemala City', flag: 'gt.png'),

      // Guinea
      WorldTime(url: 'Africa/Conakry', location: 'Conakry', flag: 'gn.png'),

      // Guinea-Bissau
      WorldTime(url: 'Africa/Bissau', location: 'Bissau', flag: 'gw.png'),

      // Guyana
      WorldTime(url: 'America/Guyana', location: 'Georgetown', flag: 'gy.png'),

      // Haiti
      WorldTime(
          url: 'America/Port-au-Prince',
          location: 'Port-au-Prince',
          flag: 'ht.png'),

      // Honduras
      WorldTime(
          url: 'America/Tegucigalpa', location: 'Tegucigalpa', flag: 'hn.png'),

      // Hungary
      WorldTime(url: 'Europe/Budapest', location: 'Budapest', flag: 'hu.png'),

      // Iceland
      WorldTime(
          url: 'Atlantic/Reykjavik', location: 'Reykjavik', flag: 'is.png'),

      // Indonesia
      WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'id.png'),

      // Iran
      WorldTime(url: 'Asia/Tehran', location: 'Tehran', flag: 'ir.png'),

      // Iraq
      WorldTime(url: 'Asia/Baghdad', location: 'Baghdad', flag: 'iq.png'),

      // Ireland
      WorldTime(url: 'Europe/Dublin', location: 'Dublin', flag: 'ie.png'),

      // Israel
      WorldTime(url: 'Asia/Jerusalem', location: 'Jerusalem', flag: 'il.png'),

      // Jamaica
      WorldTime(url: 'America/Jamaica', location: 'Kingston', flag: 'jm.png'),

      // Jordan
      WorldTime(url: 'Asia/Amman', location: 'Amman', flag: 'jo.png'),

      // Kazakhstan
      WorldTime(url: 'Asia/Almaty', location: 'Astana', flag: 'kz.png'),

      // Kuwait
      WorldTime(url: 'Asia/Kuwait', location: 'Kuwait City', flag: 'kw.png'),

      // Kyrgyzstan
      WorldTime(url: 'Asia/Bishkek', location: 'Bishkek', flag: 'kg.png'),

      // Laos
      WorldTime(url: 'Asia/Vientiane', location: 'Vientiane', flag: 'la.png'),

      // Latvia
      WorldTime(url: 'Europe/Riga', location: 'Riga', flag: 'lv.png'),

      // Lebanon
      WorldTime(url: 'Asia/Beirut', location: 'Beirut', flag: 'lb.png'),

      // Lesotho
      WorldTime(url: 'Africa/Maseru', location: 'Maseru', flag: 'ls.png'),

      // Liberia
      WorldTime(url: 'Africa/Monrovia', location: 'Monrovia', flag: 'lr.png'),

      // Libya
      WorldTime(url: 'Africa/Tripoli', location: 'Tripoli', flag: 'ly.png'),

      // Liechtenstein
      WorldTime(url: 'Europe/Vaduz', location: 'Vaduz', flag: 'li.png'),

      // Lithuania
      WorldTime(url: 'Europe/Vilnius', location: 'Vilnius', flag: 'lt.png'),

      // Luxembourg
      WorldTime(
          url: 'Europe/Luxembourg', location: 'Luxembourg', flag: 'lu.png'),

      // Madagascar
      WorldTime(
          url: 'Indian/Antananarivo', location: 'Antananarivo', flag: 'mg.png'),

      // Malawi
      WorldTime(url: 'Africa/Blantyre', location: 'Lilongwe', flag: 'mw.png'),

      // Malaysia
      WorldTime(
          url: 'Asia/Kuala_Lumpur', location: 'Kuala Lumpur', flag: 'my.png'),

      // Maldives
      WorldTime(url: 'Indian/Maldives', location: 'Malé', flag: 'mv.png'),

      // Mali
      WorldTime(url: 'Africa/Bamako', location: 'Bamako', flag: 'ml.png'),

      // Malta
      WorldTime(url: 'Europe/Malta', location: 'Valletta', flag: 'mt.png'),

      // Marshall Islands
      WorldTime(url: 'Pacific/Majuro', location: 'Majuro', flag: 'mh.png'),

      // Mauritania
      WorldTime(
          url: 'Africa/Nouakchott', location: 'Nouakchott', flag: 'mr.png'),

      // Mauritius
      WorldTime(
          url: 'Indian/Mauritius', location: 'Port Louis', flag: 'mu.png'),

      // Mexico
      WorldTime(
          url: 'America/Mexico_City', location: 'Mexico City', flag: 'mx.png'),

      // Micronesia
      WorldTime(url: 'Pacific/Chuuk', location: 'Palikir', flag: 'fm.png'),

      // Moldova
      WorldTime(url: 'Europe/Chisinau', location: 'Chisinau', flag: 'md.png'),

      // Monaco
      WorldTime(url: 'Europe/Monaco', location: 'Monaco', flag: 'mc.png'),

      // Mongolia
      WorldTime(
          url: 'Asia/Ulaanbaatar', location: 'Ulaanbaatar', flag: 'mn.png'),

      // Montenegro
      WorldTime(url: 'Europe/Podgorica', location: 'Podgorica', flag: 'me.png'),

      // Morocco
      WorldTime(
          url: 'Africa/Casablanca', location: 'Casablanca', flag: 'ma.png'),

      // Mozambique
      WorldTime(url: 'Africa/Maputo', location: 'Maputo', flag: 'mz.png'),

      // Myanmar (Burma)
      WorldTime(url: 'Asia/Yangon', location: 'Yangon', flag: 'mm.png'),

      // Namibia
      WorldTime(url: 'Africa/Windhoek', location: 'Windhoek', flag: 'na.png'),

      // Nauru
      WorldTime(url: 'Pacific/Nauru', location: 'Nauru', flag: 'nr.png'),

      // Nepal
      WorldTime(url: 'Asia/Kathmandu', location: 'Kathmandu', flag: 'np.png'),

      // Netherlands
      WorldTime(url: 'Europe/Amsterdam', location: 'Amsterdam', flag: 'nl.png'),

      // New Zealand
      WorldTime(url: 'Pacific/Auckland', location: 'Auckland', flag: 'nz.png'),

      // Nicaragua
      WorldTime(url: 'America/Managua', location: 'Managua', flag: 'ni.png'),

      // Niger
      WorldTime(url: 'Africa/Niamey', location: 'Niamey', flag: 'ne.png'),

      // Nigeria
      WorldTime(url: 'Africa/Lagos', location: 'Lagos', flag: 'ng.png'),

      // North Macedonia
      WorldTime(url: 'Europe/Skopje', location: 'Skopje', flag: 'mk.png'),

      // Norway
      WorldTime(url: 'Europe/Oslo', location: 'Oslo', flag: 'no.png'),

      // Oman
      WorldTime(url: 'Asia/Muscat', location: 'Muscat', flag: 'om.png'),

      // Pakistan
      WorldTime(url: 'Asia/Karachi', location: 'Karachi', flag: 'pk.png'),

      // Palau
      WorldTime(url: 'Pacific/Palau', location: 'Ngerulmud', flag: 'pw.png'),

      // Panama
      WorldTime(url: 'America/Panama', location: 'Panama City', flag: 'pa.png'),

      // Papua New Guinea
      WorldTime(
          url: 'Pacific/Port_Moresby',
          location: 'Port Moresby',
          flag: 'pg.png'),

      // Paraguay
      WorldTime(url: 'America/Asuncion', location: 'Asuncion', flag: 'py.png'),

      // Peru
      WorldTime(url: 'America/Lima', location: 'Lima', flag: 'pe.png'),

      // Philippines
      WorldTime(url: 'Asia/Manila', location: 'Manila', flag: 'ph.png'),

      // Poland
      WorldTime(url: 'Europe/Warsaw', location: 'Warsaw', flag: 'pl.png'),

      // Portugal
      WorldTime(url: 'Europe/Lisbon', location: 'Lisbon', flag: 'pt.png'),

      // Qatar
      WorldTime(url: 'Asia/Qatar', location: 'Doha', flag: 'qa.png'),

      // Romania
      WorldTime(url: 'Europe/Bucharest', location: 'Bucharest', flag: 'ro.png'),

      // Rwanda
      WorldTime(url: 'Africa/Kigali', location: 'Kigali', flag: 'rw.png'),

      // Saint Kitts and Nevis
      WorldTime(
          url: 'America/St_Kitts', location: 'Basseterre', flag: 'kn.png'),

      // Saint Lucia
      WorldTime(url: 'America/St_Lucia', location: 'Castries', flag: 'lc.png'),

      // Saint Vincent and the Grenadines
      WorldTime(
          url: 'America/St_Vincent', location: 'Kingstown', flag: 'vc.png'),

      // Samoa
      WorldTime(url: 'Pacific/Apia', location: 'Apia', flag: 'ws.png'),

      // San Marino
      WorldTime(
          url: 'Europe/San_Marino', location: 'San Marino', flag: 'sm.png'),

      // Sao Tome and Principe
      WorldTime(url: 'Africa/Sao_Tome', location: 'São Tomé', flag: 'st.png'),

      // Saudi Arabia
      WorldTime(url: 'Asia/Riyadh', location: 'Riyadh', flag: 'sa.png'),

      // Senegal
      WorldTime(url: 'Africa/Dakar', location: 'Dakar', flag: 'sn.png'),

      // Serbia
      WorldTime(url: 'Europe/Belgrade', location: 'Belgrade', flag: 'rs.png'),

      // Seychelles
      WorldTime(url: 'Indian/Mahe', location: 'Victoria', flag: 'sc.png'),

      // Sierra Leone
      WorldTime(url: 'Africa/Freetown', location: 'Freetown', flag: 'sl.png'),

      // Singapore
      WorldTime(url: 'Asia/Singapore', location: 'Singapore', flag: 'sg.png'),

      // Slovakia
      WorldTime(
          url: 'Europe/Bratislava', location: 'Bratislava', flag: 'sk.png'),

      // Slovenia
      WorldTime(url: 'Europe/Ljubljana', location: 'Ljubljana', flag: 'si.png'),

      // Solomon Islands
      WorldTime(
          url: 'Pacific/Guadalcanal', location: 'Honiara', flag: 'sb.png'),

      // Somalia
      WorldTime(url: 'Africa/Mogadishu', location: 'Mogadishu', flag: 'so.png'),

      // South Africa
      WorldTime(
          url: 'Africa/Johannesburg', location: 'Johannesburg', flag: 'za.png'),

      // South Korea
      WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'kr.png'),

      // South Sudan
      WorldTime(url: 'Africa/Juba', location: 'Juba', flag: 'ss.png'),

      // Spain
      WorldTime(url: 'Europe/Madrid', location: 'Madrid', flag: 'es.png'),

      // Sri Lanka
      WorldTime(url: 'Asia/Colombo', location: 'Colombo', flag: 'lk.png'),

      // Sudan
      WorldTime(url: 'Africa/Khartoum', location: 'Khartoum', flag: 'sd.png'),

      // Suriname
      WorldTime(
          url: 'America/Paramaribo', location: 'Paramaribo', flag: 'sr.png'),

      // Sweden
      WorldTime(url: 'Europe/Stockholm', location: 'Stockholm', flag: 'se.png'),

      // Switzerland
      WorldTime(url: 'Europe/Zurich', location: 'Zurich', flag: 'ch.png'),

      // Syria
      WorldTime(url: 'Asia/Damascus', location: 'Damascus', flag: 'sy.png'),

      // Taiwan
      WorldTime(url: 'Asia/Taipei', location: 'Taipei', flag: 'tw.png'),

      // Tajikistan
      WorldTime(url: 'Asia/Dushanbe', location: 'Dushanbe', flag: 'tj.png'),

      // Tanzania
      WorldTime(
          url: 'Africa/Dar_es_Salaam',
          location: 'Dar es Salaam',
          flag: 'tz.png'),

      // Thailand
      WorldTime(url: 'Asia/Bangkok', location: 'Bangkok', flag: 'th.png'),

      // Timor-Leste
      WorldTime(url: 'Asia/Dili', location: 'Dili', flag: 'tl.png'),

      // Togo
      WorldTime(url: 'Africa/Lome', location: 'Lome', flag: 'tg.png'),

      // Tonga
      WorldTime(
          url: 'Pacific/Tongatapu', location: 'Nukuʻalofa', flag: 'to.png'),

      // Trinidad and Tobago
      WorldTime(
          url: 'America/Port_of_Spain',
          location: 'Port of Spain',
          flag: 'tt.png'),

      // Tunisia
      WorldTime(url: 'Africa/Tunis', location: 'Tunis', flag: 'tn.png'),

      // Turkey
      WorldTime(url: 'Europe/Istanbul', location: 'Istanbul', flag: 'tr.png'),

      // Turkmenistan
      WorldTime(url: 'Asia/Ashgabat', location: 'Ashgabat', flag: 'tm.png'),

      // Tuvalu
      WorldTime(url: 'Pacific/Funafuti', location: 'Funafuti', flag: 'tv.png'),

      // Uganda
      WorldTime(url: 'Africa/Kampala', location: 'Kampala', flag: 'ug.png'),

      // Ukraine
      WorldTime(url: 'Europe/Kyiv', location: 'Kyiv', flag: 'ua.png'),

      // United Arab Emirates
      WorldTime(url: 'Asia/Dubai', location: 'Dubai', flag: 'ae.png'),

      // United Kingdom
      WorldTime(url: 'Europe/London', location: 'London', flag: 'gb.png'),

      // United States
      WorldTime(url: 'America/New_York', location: 'New York', flag: 'us.png'),
      WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'us.png'),
      WorldTime(
          url: 'America/Los_Angeles', location: 'Los Angeles', flag: 'us.png'),
      WorldTime(url: 'America/Denver', location: 'Denver', flag: 'us.png'),
      WorldTime(url: 'America/Phoenix', location: 'Phoenix', flag: 'us.png'),

      // Uruguay
      WorldTime(
          url: 'America/Montevideo', location: 'Montevideo', flag: 'uy.png'),

      // Uzbekistan
      WorldTime(url: 'Asia/Tashkent', location: 'Tashkent', flag: 'uz.png'),

      // Vanuatu
      WorldTime(url: 'Pacific/Efate', location: 'Port Vila', flag: 'vu.png'),

      // Vatican City
      WorldTime(
          url: 'Europe/Vatican', location: 'Vatican City', flag: 'va.png'),

      // Venezuela
      WorldTime(url: 'America/Caracas', location: 'Caracas', flag: 've.png'),

      // Vietnam
      WorldTime(
          url: 'Asia/Ho_Chi_Minh',
          location: 'Ho Chi Minh City',
          flag: 'vn.png'),

      // Yemen
      WorldTime(url: 'Asia/Sanaa', location: 'Sanaa', flag: 'ye.png'),

      // Zambia
      WorldTime(url: 'Africa/Lusaka', location: 'Lusaka', flag: 'zm.png'),

      // Zimbabwe
      WorldTime(url: 'Africa/Harare', location: 'Harare', flag: 'zw.png'),
    ];
  }
}
