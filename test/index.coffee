# Dependencies
hanzen= require '../src'

# Environment
# coffeelint: disable=max_line_length

# Specs
describe 'hanzen',->
  it '.toHankaku',->
    str= '。「」、・ヲァィゥェォャュョッーアイウエオカキクケコサシスセソタチツテトナニヌネノハヒフヘホマミムメモヤユヨラリルレロワンガギグゲゴザジズゼゾダヂヅデドバパビピブプベペボポヷヴヺ'
    result= hanzen.toHankaku str
    expect(result).toBe '｡｢｣､･ｦｧｨｩｪｫｬｭｮｯｰｱｲｳｴｵｶｷｸｹｺｻｼｽｾｿﾀﾁﾂﾃﾄﾅﾆﾇﾈﾉﾊﾋﾌﾍﾎﾏﾐﾑﾒﾓﾔﾕﾖﾗﾘﾙﾚﾛﾜﾝｶﾞｷﾞｸﾞｹﾞｺﾞｻﾞｼﾞｽﾞｾﾞｿﾞﾀﾞﾁﾞﾂﾞﾃﾞﾄﾞﾊﾞﾊﾟﾋﾞﾋﾟﾌﾞﾌﾟﾍﾞﾍﾟﾎﾞﾎﾟﾜﾞｳﾞｦﾞ'
    
    str= 'あのイーハトーヴォのすきとおった風'
    result= hanzen.toHankaku str
    expect(result).toBe 'あのｲｰﾊﾄｰｳﾞｫのすきとおった風'

  it '.toZenkaku',->
    str= '｡｢｣､･ｦｧｨｩｪｫｬｭｮｯｰｱｲｳｴｵｶｷｸｹｺｻｼｽｾｿﾀﾁﾂﾃﾄﾅﾆﾇﾈﾉﾊﾋﾌﾍﾎﾏﾐﾑﾒﾓﾔﾕﾖﾗﾘﾙﾚﾛﾜﾝｶﾞｷﾞｸﾞｹﾞｺﾞｻﾞｼﾞｽﾞｾﾞｿﾞﾀﾞﾁﾞﾂﾞﾃﾞﾄﾞﾊﾞﾊﾟﾋﾞﾋﾟﾌﾞﾌﾟﾍﾞﾍﾟﾎﾞﾎﾟﾜﾞｳﾞｦﾞ'
    result= hanzen.toZenkaku str
    expect(result).toBe '。「」、・ヲァィゥェォャュョッーアイウエオカキクケコサシスセソタチツテトナニヌネノハヒフヘホマミムメモヤユヨラリルレロワンガギグゲゴザジズゼゾダヂヅデドバパビピブプベペボポヷヴヺ'
    
    str= 'あのｲｰﾊﾄｰｳﾞｫのすきとおった風'
    result= hanzen.toZenkaku str
    expect(result).toBe 'あのイーハトーヴォのすきとおった風'
