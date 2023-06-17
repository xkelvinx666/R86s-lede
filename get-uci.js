const getUci = (uciString, service) => {
    const uciContent = uciString.split('\n').map((str) => str.trim().startsWith(`${service}.`) ?  `uci set ${str.trim()}` : str.trim())
    uciContent.push(`uci commit ${service}`)
    return uciContent.join('\n ')
}