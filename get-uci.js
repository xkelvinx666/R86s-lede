const getUci = (uciString, service) => {
    const uciContent = uciString.split('\n').map((str) => {
        const content = str.trim()
        if(content.startsWith(`${service}.`)) {
            const isList = content.split('=').pop().split(' ').length > 1
            if(isList) {
                const [key, value] = content.split('=');
                const values = value.split(' ')
                return values.map((v) => `uci add_list ${key}=${v}`)
            } else {
                return `uci set ${content}`
            }
        } else {
            return content
        }
    })
    uciContent.push(`uci commit ${service}`)
    return uciContent.flat().join('\n ')
}