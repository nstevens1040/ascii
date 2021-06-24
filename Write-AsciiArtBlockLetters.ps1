function Write-AsciiArtBlockLetters
{
    [cmdletbinding()]
    Param()
    $startHeight = [Console]::BufferHeight
    $startWidth = [Console]::BufferWidth
    [console]::bufferHeight = 3000
    [console]::bufferWidth = [Console]::WindowWidth
    $keys = "[`n    {`n        `"letter`": `" `",`n        `"base64`": `"ICAgICAgICAKICAgICAgICAKICAgICAgICAKICAgICAgICAKICAgICAgICAKICAgICAgICA=`"`n    },`n    {`n        `"letter`":  `"!`",`n        `"base64`":  `"IF8gIAp8IHwgCnwgfCAKfCB8IAp8X3wgCihfKSAKICAgIA==`"`n    },`n    {`n        `"letter`":  `"\`"`",`n        `"base64`":  `"IF8gXyAgCiggfCApIAogViBWICAKICAgICAgCiAgICAgIAogICAgICAKICAgICAg`"`n    },`n    {`n        `"letter`":  `"#`",`n        `"base64`":  `"ICAgXyAgXyAgICAKIF98IHx8IHxfICAKfF8gIF9fICBffCAKIF98IHx8IHxfICAKfF8gIF9fICBffCAKICB8X3x8X3wgICAKICAgICAgICAgICA=`"`n    },`n    {`n        `"letter`":  `"$`",`n        `"base64`":  `"ICBfICAgCiB8IHwgIAovIF9fKSAKXF9fIFwgCiggICAvIAogfF98ICAKICAgICAg`"`n    },`n    {`n        `"letter`":  `"%`",`n        `"base64`":  `"IF8gICBfXyAKKF8pIC8gLyAKICAgLyAvICAKICAvIC8gICAKIC8gLyBfICAKL18vIChfKSAKICAgICAgICA=`"`n    },`n    {`n        `"letter`":  `"\u0026`",`n        `"base64`":  `"ICAgICAgICAgCiAgX19fICAgIAogKCBfICkgICAKIC8gXyBcL1wgCnwgKF8+ICA8IAogXF9fXy9cLyAKICAgICAgICAg`"`n    },`n    {`n        `"letter`":  `"\u0027`",`n        `"base64`":  `"IF8gIAooICkgCnwvICAKICAgIAogICAgCiAgICAKICAgIA==`"`n    },`n    {`n        `"letter`":  `"(`",`n        `"base64`":  `"ICBfXyAKIC8gLyAKfCB8ICAKfCB8ICAKfCB8ICAKfCB8ICAKIFxfXCA=`"`n    },`n    {`n        `"letter`":  `")`",`n        `"base64`":  `"X18gICAKXCBcICAKIHwgfCAKIHwgfCAKIHwgfCAKIHwgfCAKL18vICA=`"`n    },`n    {`n        `"letter`":  `"*`",`n        `"base64`":  `"ICAgIF8gICAgIAogL1x8IHwvXCAgCiBcIGAgJyAvICAKfF8gICAgIF98IAogLyAsIC4gXCAgCiBcL3xffFwvICAKICAgICAgICAgIA==`"`n    },`n    {`n        `"letter`":  `"+`",`n        `"base64`":  `"ICAgICAgICAKICAgXyAgICAKIF98IHxfICAKfF8gICBffCAKICB8X3wgICAKICAgICAgICAKICAgICAgICA=`"`n    },`n    {`n        `"letter`":  `",`",`n        `"base64`":  `"ICAgIAogICAgCiAgICAKICAgIAogXyAgCiggKSAKfC8gIA==`"`n    },`n    {`n        `"letter`":  `"-`",`n        `"base64`":  `"ICAgICAgICAgCiAgICAgICAgIAogX19fX19fICAKfF9fX19fX3wgCiAgICAgICAgIAogICAgICAgICAKICAgICAgICAg`"`n    },`n    {`n        `"letter`":  `".`",`n        `"base64`":  `"ICAgIAogICAgCiAgICAKICAgIAogXyAgCihfKSAKICAgIA==`"`n    },`n    {`n        `"letter`":  `"/`",`n        `"base64`":  `"ICAgICBfXyAKICAgIC8gLyAKICAgLyAvICAKICAvIC8gICAKIC8gLyAgICAKL18vICAgICAKICAgICAgICA=`"`n    },`n    {`n        `"letter`":  `"0`",`n        `"base64`":  `"ICBfX18gICAKIC8gXyBcICAKfCB8IHwgfCAKfCB8IHwgfCAKfCB8X3wgfCAKIFxfX18vICAKICAgICAgICA=`"`n    },`n    {`n        `"letter`":  `"1`",`n        `"base64`":  `"IF9fICAKL18gfCAKIHwgfCAKIHwgfCAKIHwgfCAKIHxffCAKICAgICA=`"`n    },`n    {`n        `"letter`":  `"2`",`n        `"base64`":  `"IF9fXyAgIAp8X18gXCAgCiAgICkgfCAKICAvIC8gIAogLyAvXyAgCnxfX19ffCAKICAgICAgIA==`"`n    },`n    {`n        `"letter`":  `"3`",`n        `"base64`":  `"IF9fX18gICAKfF9fXyBcICAKICBfXykgfCAKIHxfXyA8ICAKIF9fXykgfCAKfF9fX18vICAKICAgICAgICA=`"`n    },`n    {`n        `"letter`":  `"4`",`n        `"base64`":  `"IF8gIF8gICAgCnwgfHwgfCAgIAp8IHx8IHxfICAKfF9fICAgX3wgCiAgIHwgfCAgIAogICB8X3wgICAKICAgICAgICAg`"`n    },`n    {`n        `"letter`":  `"5`",`n        `"base64`":  `"IF9fX19fICAKfCBfX19ffCAKfCB8X18gICAKfF9fXyBcICAKIF9fXykgfCAKfF9fX18vICAKICAgICAgICA=`"`n    },`n    {`n        `"letter`":  `"6`",`n        `"base64`":  `"ICAgX18gICAKICAvIC8gICAKIC8gL18gICAKfCAnXyBcICAKfCAoXykgfCAKIFxfX18vICAKICAgICAgICA=`"`n    },`n    {`n        `"letter`":  `"7`",`n        `"base64`":  `"IF9fX19fXyAgCnxfX19fICB8IAogICAgLyAvICAKICAgLyAvICAgCiAgLyAvICAgIAogL18vICAgICAKICAgICAgICAg`"`n    },`n    {`n        `"letter`":  `"8`",`n        `"base64`":  `"ICBfX18gICAKIC8gXyBcICAKfCAoXykgfCAKID4gXyA8ICAKfCAoXykgfCAKIFxfX18vICAKICAgICAgICA=`"`n    },`n    {`n        `"letter`":  `"9`",`n        `"base64`":  `"ICBfX18gICAKIC8gXyBcICAKfCAoXykgfCAKIFxfXywgfCAKICAgLyAvICAKICAvXy8gICAKICAgICAgICA=`"`n    },`n    {`n        `"letter`":  `":`",`n        `"base64`":  `"ICAgIAogXyAgCihfKSAKICAgIAogXyAgCihfKSAKICAgIA==`"`n    },`n    {`n        `"letter`":  `";`",`n        `"base64`":  `"ICAgIAogXyAgCihfKSAKICAgIAogXyAgCiggKSAKfC8gIA==`"`n    },`n    {`n        `"letter`":  `"\u003c`",`n        `"base64`":  `"ICAgX18gCiAgLyAvIAogLyAvICAKPCA8ICAgCiBcIFwgIAogIFxfXCAKICAgICAg`"`n    },`n    {`n        `"letter`":  `"=`",`n        `"base64`":  `"ICAgICAgICAgCiBfX19fX18gIAp8X19fX19ffCAKIF9fX19fXyAgCnxfX19fX198IAogICAgICAgICAKICAgICAgICAg`"`n    },`n    {`n        `"letter`":  `"\u003e`",`n        `"base64`":  `"X18gICAgClwgXCAgIAogXCBcICAKICA+ID4gCiAvIC8gIAovXy8gICAKICAgICAg`"`n    },`n    {`n        `"letter`":  `"?`",`n        `"base64`":  `"IF9fXyAgIAp8X18gXCAgCiAgICkgfCAKICAvIC8gIAogfF98ICAgCiAoXykgICAKICAgICAgIA==`"`n    },`n    {`n        `"letter`":  `"@`",`n        `"base64`":  `"ICAgICAgICAgCiAgIF9fX18gIAogIC8gX18gXCAKIC8gLyBfYCB8CnwgfCAoX3wgfAogXCBcX18sX3wKICBcX19fXy8g`"`n    },`n    {`n        `"letter`":  `"A`",`n        `"base64`":  `"ICAgICAgICAgICAKICAgIC9cICAgICAKICAgLyAgXCAgICAKICAvIC9cIFwgICAKIC8gX19fXyBcICAKL18vICAgIFxfXCA=`"`n    },`n    {`n        `"letter`":  `"B`",`n        `"base64`":  `"IF9fX18gICAKfCAgXyBcICAKfCB8XykgfCAKfCAgXyA8ICAKfCB8XykgfCAKfF9fX18vICA=`"`n    },`n    {`n        `"letter`":  `"C`",`n        `"base64`":  `"ICBfX19fXyAgCiAvIF9fX198IAp8IHwgICAgICAKfCB8ICAgICAgCnwgfF9fX18gIAogXF9fX19ffCA=`"`n    },`n    {`n        `"letter`":  `"D`",`n        `"base64`":  `"IF9fX19fICAgCnwgIF9fIFwgIAp8IHwgIHwgfCAKfCB8ICB8IHwgCnwgfF9ffCB8IAp8X19fX18vICA=`"`n    },`n    {`n        `"letter`":  `"E`",`n        `"base64`":  `"IF9fX19fXyAgCnwgIF9fX198IAp8IHxfXyAgICAKfCAgX198ICAgCnwgfF9fX18gIAp8X19fX19ffCA=`"`n    },`n    {`n        `"letter`":  `"F`",`n        `"base64`":  `"IF9fX19fXyAgCnwgIF9fX198IAp8IHxfXyAgICAKfCAgX198ICAgCnwgfCAgICAgIAp8X3wgICAgICA=`"`n    },`n    {`n        `"letter`":  `"G`",`n        `"base64`":  `"ICBfX19fXyAKIC8gX19fX3wKfCB8ICBfXyAKfCB8IHxfIHwKfCB8X198IHwKIFxfX19fX3w=`"`n    },`n    {`n        `"letter`":  `"H`",`n        `"base64`":  `"IF8gICAgXyAgCnwgfCAgfCB8IAp8IHxfX3wgfCAKfCAgX18gIHwgCnwgfCAgfCB8IAp8X3wgIHxffCA=`"`n    },`n    {`n        `"letter`":  `"I`",`n        `"base64`":  `"IF9fX19fICAKfF8gICBffCAKICB8IHwgICAKICB8IHwgICAKIF98IHxfICAKfF9fX19ffCA=`"`n    },`n    {`n        `"letter`":  `"J`",`n        `"base64`":  `"ICAgICAgXyAgCiAgICAgfCB8IAogICAgIHwgfCAKIF8gICB8IHwgCnwgfF9ffCB8IAogXF9fX18vICA=`"`n    },`n    {`n        `"letter`":  `"K`",`n        `"base64`":  `"IF8gIF9fIAp8IHwvIC8gCnwgJyAvICAKfCAgPCAgIAp8IC4gXCAgCnxffFxfXCA=`"`n    },`n    {`n        `"letter`":  `"L`",`n        `"base64`":  `"IF8gICAgICAgCnwgfCAgICAgIAp8IHwgICAgICAKfCB8ICAgICAgCnwgfF9fX18gIAp8X19fX19ffCA=`"`n    },`n    {`n        `"letter`":  `"M`",`n        `"base64`":  `"IF9fICBfXyAgCnwgIFwvICB8IAp8IFwgIC8gfCAKfCB8XC98IHwgCnwgfCAgfCB8IAp8X3wgIHxffCA=`"`n    },`n    {`n        `"letter`":  `"N`",`n        `"base64`":  `"IF8gICBfICAKfCBcIHwgfCAKfCAgXHwgfCAKfCAuIGAgfCAKfCB8XCAgfCAKfF98IFxffCA=`"`n    },`n    {`n        `"letter`":  `"O`",`n        `"base64`":  `"ICBfX19fICAgCiAvIF9fIFwgIAp8IHwgIHwgfCAKfCB8ICB8IHwgCnwgfF9ffCB8IAogXF9fX18vICA=`"`n    },`n    {`n        `"letter`":  `"P`",`n        `"base64`":  `"IF9fX19fICAgCnwgIF9fIFwgIAp8IHxfXykgfCAKfCAgX19fLyAgCnwgfCAgICAgIAp8X3wgICAgICA=`"`n    },`n    {`n        `"letter`":  `"Q`",`n        `"base64`":  `"ICBfX19fICAgCiAvIF9fIFwgIAp8IHwgIHwgfCAKfCB8ICB8IHwgCnwgfF9ffCB8IAogXF9fX1xfXCA=`"`n    },`n    {`n        `"letter`":  `"R`",`n        `"base64`":  `"IF9fX19fICAgCnwgIF9fIFwgIAp8IHxfXykgfCAKfCAgXyAgLyAgCnwgfCBcIFwgIAp8X3wgIFxfXCA=`"`n    },`n    {`n        `"letter`":  `"S`",`n        `"base64`":  `"ICBfX19fXyAgCiAvIF9fX198IAp8IChfX18gICAKIFxfX18gXCAgCiBfX19fKSB8IAp8X19fX18vICA=`"`n    },`n    {`n        `"letter`":  `"T`",`n        `"base64`":  `"IF9fX19fX18gIAp8X18gICBfX3wgCiAgIHwgfCAgICAKICAgfCB8ICAgIAogICB8IHwgICAgCiAgIHxffCAgICA=`"`n    },`n    {`n        `"letter`":  `"U`",`n        `"base64`":  `"IF8gICAgXyAgCnwgfCAgfCB8IAp8IHwgIHwgfCAKfCB8ICB8IHwgCnwgfF9ffCB8IAogXF9fX18vICA=`"`n    },`n    {`n        `"letter`":  `"V`",`n        `"base64`":  `"X18gICAgICBfXyAKXCBcICAgIC8gLyAKIFwgXCAgLyAvICAKICBcIFwvIC8gICAKICAgXCAgLyAgICAKICAgIFwvICAgICA=`"`n    },`n    {`n        `"letter`":  `"W`",`n        `"base64`":  `"X18gICAgICAgICAgX18gClwgXCAgICAgICAgLyAvIAogXCBcICAvXCAgLyAvICAKICBcIFwvICBcLyAvICAgCiAgIFwgIC9cICAvICAgIAogICAgXC8gIFwvICAgICA=`"`n    },`n    {`n        `"letter`":  `"X`",`n        `"base64`":  `"X18gICBfXyAKXCBcIC8gLyAKIFwgViAvICAKICA+IDwgICAKIC8gLiBcICAKL18vIFxfXCA=`"`n    },`n    {`n        `"letter`":  `"Y`",`n        `"base64`":  `"X18gICAgIF9fIApcIFwgICAvIC8gCiBcIFxfLyAvICAKICBcICAgLyAgIAogICB8IHwgICAgCiAgIHxffCAgICA=`"`n    },`n    {`n        `"letter`":  `"Z`",`n        `"base64`":  `"IF9fX19fXyAKfF9fXyAgLyAKICAgLyAvICAKICAvIC8gICAKIC8gL19fICAKL19fX19ffCA=`"`n    },`n    {`n        `"letter`":  `"[`",`n        `"base64`":  `"IF9fXyAKfCAgX3wKfCB8ICAKfCB8ICAKfCB8ICAKfCB8XyAKfF9fX3wKICAgICA=`"`n    },`n    {`n        `"letter`":  `"\\`",`n        `"base64`":  `"IF9fICAgICAKIFwgXCAgICAKICBcIFwgICAKICAgXCBcICAKICAgIFwgXCAKICAgICBcX1wKICAgICAgICAKICAgICAgICA=`"`n    },`n    {`n        `"letter`":  `"]`",`n        `"base64`":  `"ICBfX18gCiB8XyAgfAogICB8IHwKICAgfCB8CiAgIHwgfAogIF98IHwKIHxfX198CiAgICAgIA==`"`n    },`n    {`n        `"letter`":  `"^`",`n        `"base64`":  `"ICAvXCAKIHwvXHwKICAgICAKICAgICAKICAgICAKICAgICAKICAgICAKICAgICA=`"`n    },`n    {`n        `"letter`":  `"_`",`n        `"base64`":  `"ICAgICAgICAgCiAgICAgICAgIAogICAgICAgICAKICAgICAgICAgCiAgICAgICAgIAogICAgICAgICAKICBfX19fX18gCiB8X19fX19ffA==`"`n    },`n    {`n        `"letter`":  `"```",`n        `"base64`":  `"ICBfIAogKCApCiAgXHwKICAgIAogICAgCiAgICAKICAgIAogICAg`"`n    },`n    {`n        `"letter`":  `"a`",`n        `"base64`":  `"ICAgICAgICAKICAgICAgICAKICBfXyBfICAKIC8gX2AgfCAKfCAoX3wgfCAKIFxfXyxffCAKICAgICAgICAKICAgICAgICA=`"`n    },`n    {`n        `"letter`":  `"b`",`n        `"base64`":  `"IF8gICAgICAKfCB8ICAgICAKfCB8X18gICAKfCAnXyBcICAKfCB8XykgfCAKfF8uX18vICAKICAgICAgICAKICAgICAgICA=`"`n    },`n    {`n        `"letter`":  `"c`",`n        `"base64`":  `"ICAgICAgIAogICAgICAgCiAgX19fICAKIC8gX198IAp8IChfXyAgCiBcX19ffCAKICAgICAgIAogICAgICAg`"`n    },`n    {`n        `"letter`":  `"d`",`n        `"base64`":  `"ICAgICBfICAKICAgIHwgfCAKICBfX3wgfCAKIC8gX2AgfCAKfCAoX3wgfCAKIFxfXyxffCAKICAgICAgICAKICAgICAgICA=`"`n    },`n    {`n        `"letter`":  `"e`",`n        `"base64`":  `"ICAgICAgIAogICAgICAgCiAgX19fICAKIC8gXyBcIAp8ICBfXy8gCiBcX19ffCAKICAgICAgIAogICAgICAg`"`n    },`n    {`n        `"letter`":  `"f`",`n        `"base64`":  `"ICBfXyAgCiAvIF98IAp8IHxfICAKfCAgX3wgCnwgfCAgIAp8X3wgICAKICAgICAgCiAgICAgIA==`"`n    },`n    {`n        `"letter`":  `"g`",`n        `"base64`":  `"ICAgICAgIA0KICAgICAgIA0KICBfXyBfIA0KIC8gX2AgfA0KfCAoX3wgfA0KIFxfXywgfA0KICBfXy8gfA0KIHxfX18vIA==`"`n    },`n    {`n        `"letter`":  `"h`",`n        `"base64`":  `"IF8gICAgICAKfCB8ICAgICAKfCB8X18gICAKfCAnXyBcICAKfCB8IHwgfCAKfF98IHxffCAKICAgICAgICAKICAgICAgICA=`"`n    },`n    {`n        `"letter`":  `"i`",`n        `"base64`":  `"IF8gIAooXykgCiBfICAKfCB8IAp8IHwgCnxffCAKICAgIAogICAg`"`n    },`n    {`n        `"letter`":  `"j`",`n        `"base64`":  `"ICAgXyAgCiAgKF8pIAogICBfICAKICB8IHwgCiAgfCB8IAogIHwgfCAKIF8vIHwgCnxfXy8gIA==`"`n    },`n    {`n        `"letter`":  `"k`",`n        `"base64`":  `"IF8gICAgIAp8IHwgICAgCnwgfCBfXyAKfCB8LyAvIAp8ICAgPCAgCnxffFxfXCAKICAgICAgIAogICAgICAg`"`n    },`n    {`n        `"letter`":  `"l`",`n        `"base64`":  `"IF8gIAp8IHwgCnwgfCAKfCB8IAp8IHwgCnxffCAKICAgIAogICAg`"`n    },`n    {`n        `"letter`":  `"m`",`n        `"base64`":  `"ICAgICAgICAgICAgCiAgICAgICAgICAgIAogXyBfXyBfX18gICAKfCAnXyBgIF8gXCAgCnwgfCB8IHwgfCB8IAp8X3wgfF98IHxffCAKICAgICAgICAgICAgCiAgICAgICAgICAgIA==`"`n    },`n    {`n        `"letter`":  `"n`",`n        `"base64`":  `"ICAgICAgICAKICAgICAgICAKIF8gX18gICAKfCAnXyBcICAKfCB8IHwgfCAKfF98IHxffCAKICAgICAgICAKICAgICAgICA=`"`n    },`n    {`n        `"letter`":  `"o`",`n        `"base64`":  `"ICAgICAgICAKICAgICAgICAKICBfX18gICAKIC8gXyBcICAKfCAoXykgfCAKIFxfX18vICAKICAgICAgICAKICAgICAgICA=`"`n    },`n    {`n        `"letter`":  `"p`",`n        `"base64`":  `"ICAgICAgICAKICAgICAgICAKIF8gX18gICAKfCAnXyBcICAKfCB8XykgfCAKfCAuX18vICAKfCB8ICAgICAKfF98ICAgICA=`"`n    },`n    {`n        `"letter`":  `"q`",`n        `"base64`":  `"ICAgICAgICAKICAgICAgICAKICBfXyBfICAKIC8gX2AgfCAKfCAoX3wgfCAKIFxfXywgfCAKICAgIHwgfCAKICAgIHxffCA=`"`n    },`n    {`n        `"letter`":  `"r`",`n        `"base64`":  `"ICAgICAgIAogICAgICAgCiBfIF9fICAKfCAnX198IAp8IHwgICAgCnxffCAgICAKICAgICAgIAogICAgICAg`"`n    },`n    {`n        `"letter`":  `"s`",`n        `"base64`":  `"ICAgICAgCiAgICAgIAogX19fICAKLyBfX3wgClxfXyBcIAp8X19fLyAKICAgICAgCiAgICAgIA==`"`n    },`n    {`n        `"letter`":  `"t`",`n        `"base64`":  `"IF8gICAgCnwgfCAgIAp8IHxfICAKfCBfX3wgCnwgfF8gIAogXF9ffCAKICAgICAgCiAgICAgIA==`"`n    },`n    {`n        `"letter`":  `"u`",`n        `"base64`":  `"ICAgICAgICAKICAgICAgICAKIF8gICBfICAKfCB8IHwgfCAKfCB8X3wgfCAKIFxfXyxffCAKICAgICAgICAKICAgICAgICA=`"`n    },`n    {`n        `"letter`":  `"v`",`n        `"base64`":  `"ICAgICAgICAKICAgICAgICAKX18gICBfXyAKXCBcIC8gLyAKIFwgViAvICAKICBcXy8gICAKICAgICAgICAKICAgICAgICA=`"`n    },`n    {`n        `"letter`":  `"w`",`n        `"base64`":  `"ICAgICAgICAgICAKICAgICAgICAgICAKX18gICAgICBfXyAKXCBcIC9cIC8gLyAKIFwgViAgViAvICAKICBcXy9cXy8gICAKICAgICAgICAgICAKICAgICAgICAgICA=`"`n    },`n    {`n        `"letter`":  `"x`",`n        `"base64`":  `"ICAgICAgIAogICAgICAgCl9fICBfXyAKXCBcLyAvIAogPiAgPCAgCi9fL1xfXCAKICAgICAgIAogICAgICAg`"`n    },`n    {`n        `"letter`":  `"y`",`n        `"base64`":  `"ICAgICAgICAKICAgICAgICAKIF8gICBfICAKfCB8IHwgfCAKfCB8X3wgfCAKIFxfXywgfCAKICBfXy8gfCAKIHxfX18vICA=`"`n    },`n    {`n        `"letter`":  `"z`",`n        `"base64`":  `"ICAgICAgCiAgICAgIAogX19fXyAKfF8gIC8gCiAvIC8gIAovX19ffCAKICAgICAgCiAgICAgIA==`"`n    },`n    {`n        `"letter`":  `"{`",`n        `"base64`":  `"ICAgIF9fCiAgIC8gLwogIHwgfCAKIC8gLyAgCiBcIFwgIAogIHwgfCAKICAgXF9cCiAgICAgIA==`"`n    },`n    {`n        `"letter`":  `"|`",`n        `"base64`":  `"ICBfIAogfCB8CiB8IHwKIHwgfAogfCB8CiB8IHwKIHwgfAogfF98`"`n    },`n    {`n        `"letter`":  `"}`",`n        `"base64`":  `"IF9fICAgCiBcIFwgIAogIHwgfCAKICAgXCBcCiAgIC8gLwogIHwgfCAKIC9fLyAgCiAgICAgIA==`"`n    },`n    {`n        `"letter`":  `"~`",`n        `"base64`":  `"ICAvXC98CiB8L1wvIAogICAgICAKICAgICAgCiAgICAgIAogICAgICAKICAgICAgCiAgICAgICA=`"`n    }`n]`n" | ConvertFrom-Json
    Write-Host "Strike " -NoNewline -ForegroundColor Green; Write-Host "CTRL+C " -ForegroundColor Yellow -NoNewline; Write-Host "to exit this script." -ForegroundColor Green
    Write-Host "Type something and then strike " -NoNewline -ForegroundColor Green; Write-Host "ENTER" -ForegroundColor Yellow -NoNewline; Write-Host " to see ascii art block letters." -ForegroundColor Green
    $space = [System.Text.Encoding]::ASCII.GetString([System.Convert]::FromBase64String($keys.Where({$_.letter -eq [System.Text.Encoding]::ASCII.GetString([byte]32)})[0].base64))
    while($true)
    {
        $main_top = [console]::CursorTop
        $main_left = [console]::CursorLeft
        $read = Read-Host
        $block_letters = @()
        $read.ToCharArray().Foreach({
            $block_letters += [System.Text.Encoding]::ASCII.GetString([convert]::FromBase64String($keys[([Int32]::Parse("$([System.Text.Encoding]::ASCII.GetBytes($_))") - 32)].base64))
        })
        $top = $main_top
        $left = $main_left
        $space.Split("`n").ForEach({
            $top = $top + 1
            [console]::SetCursorPosition($left,$top)
            Write-Host $_ -ForegroundColor Green -NoNewline
        })
        $low = $top
        for($i = 0; $i -lt $block_letters.Count; $i++)
        {
            $block_letter = $block_letters[$i]
            $top = $main_top
            if(($left + (@($block_letter.Split("`n") | sort Length -Descending)[0].Length + 1)) -ge [console]::BufferWidth)
            {
                $left = 0
                $main_top = $low + 2
                $top = $main_top
            }
            [console]::SetCursorPosition($left,$top)
            $block_letter.Split("`n").ForEach({
                $top = $top + 1
                [console]::SetCursorPosition($left,$top)
                Write-Host $_ -ForegroundColor Green -NoNewline
            })
            $low = $top
            $left = $left + (@($block_letter.Split("`n") | sort Length -Descending)[0].Length + 1)
        }
        $main_top = $low + 2
        [console]::SetCursorPosition($main_left,$main_top)
    }
    [Console]::BufferHeight = $startHeight
    [Console]::BufferWidth = $startWidth
}
