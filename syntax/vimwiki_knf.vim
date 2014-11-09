"hi def KNFOBJ_HI   		guifg=black  guibg=green   gui=NONE  ctermfg=NONE  ctermbg=NONE  cterm=NONE
hi def KNFJAVA_HI  		guifg=black  guibg=cyan   gui=NONE  ctermfg=NONE  ctermbg=NONE  cterm=NONE
"hi def KNFXML_HI   		guifg=white  guibg=red   gui=NONE  ctermfg=NONE  ctermbg=NONE  cterm=NONE
hi def KNFTOPIC_HI   	guifg=white  guibg=darkmagenta   gui=NONE  ctermfg=NONE  ctermbg=NONE  cterm=NONE
hi def KNFCOMMENT_HI   	guifg=#6E6B6C guibg=black   gui=NONE  ctermfg=NONE  ctermbg=NONE  cterm=NONE
hi def KNFHIGHLI_HI	    guifg=black   guibg=lightmagenta   gui=NONE  ctermfg=NONE  ctermbg=NONE  cterm=NONE
hi def KNFEXAMPLE_HI    guifg=GreenYellow  guibg=DarkOliveGreen  gui=NONE  ctermfg=NONE  ctermbg=NONE  cterm=NONE
hi def KNFOUTPUT_HI     guifg=chocolate4   guibg=gold1   gui=NONE  ctermfg=NONE  ctermbg=NONE  cterm=NONE
hi def KNFFILE_HI     guifg=black  guibg=SaddleBrown   gui=NONE  ctermfg=NONE  ctermbg=NONE  cterm=NONE
hi def KNPARAM_HI     guifg=LightCyan2  guibg=RoyalBlue3  gui=NONE  ctermfg=NONE  ctermbg=NONE  cterm=NONE
hi def KNCOMMAND_HI     guifg=LightCyan2  guibg=NavajoWhite4  gui=italic  ctermfg=NONE  ctermbg=NONE  cterm=NONE
hi def KNTITLE_HI     gui=underline  ctermfg=NONE  ctermbg=NONE  cterm=NONE
hi def KNSTEP_HI     guifg=LightCyan2  guibg=Gray10  gui=NONE  ctermfg=NONE  ctermbg=NONE  cterm=NONE

"hi def link knfObj    	KNFOBJ_HI
hi def link knfJava    	KNFJAVA_HI
"hi def link knfXml    	KNFXML_HI
hi def link knftopic 	KNFTOPIC_HI
hi def link knfFoldcomment 	KNFCOMMENT_HI
hi def link knfcomment 	KNFCOMMENT_HI
hi def link knfExample  KNFEXAMPLE_HI
hi def link knfOutput   KNFOUTPUT_HI
hi def link knfFileFormat   KNFFILE_HI
hi def link knfParam   KNPARAM_HI
hi def link knfCommand KNCOMMAND_HI
hi def link knfStep   KNSTEP_HI
hi def link knfTitle   KNTITLE_HI
hi link knfMainIdea KNFHIGHLI_HI

" syn keyword basicLanguageKeywords PRINT OPEN IF
"
"syn match knfObj 'obj'
syn match knfJava 'java'
syn match knfJava 'Syntax:'
"syn match knfXml 'xml'
syn match knftopic 'topic'
syn match knfFoldcomment '\[ ---  end  ---- \]'
syn match knfFoldcomment '\[ --- start ---- \]'
syn match knfFoldcomment '///@!<'
syn match knfFoldcomment '///@!>'
syn match knfFoldcomment '\[ --- start ---- \]'
syn match knfcomment '///.*'
syn match knfcomment '//.*'
syn match knfcomment '/\* .* \*/'
syn match knfhighlight 'keyword'
syn match knfExample '^Example [[:digit:]]*:'
syn match knfOutput '[oO]utput[s]* *[[:digit:]]*:'
syn match knfParam 'Parameter:'
syn match knfFileFormat '@@.*:'
syn match knfCommand '^[$>] .*'
syn match knfStep 'Step.*:'
syn match knfTitle 'Title: .*'
syn region knfMainIdea start='<hi>' end="<\/hi>"
"syn keyword knfKeyword obj
"
syn region knfStartEndFold
      \ start="\[ --- start ---- \]"
      \ end="\[ ---  end  ---- \]"
      \ transparent fold
	  \ skip="{}"
	  \ keepend


"syn region knfStartEndFold2
"      \ start='///@!<'
"      \ end="///@!>"
"      \ transparent fold
"	  \ skip="{}"
"	  \ keepend


"----- android
hi def KNF_ANDROIDKEY	guifg=yellow   guibg=black   gui=NONE  ctermfg=NONE  ctermbg=NONE  cterm=NONE
syn keyword AndroidKey 	EditText
syn keyword AndroidKey 	String
syn keyword AndroidKey 	RelativeLayout
syn keyword AndroidKey 	LinearLayout
syn keyword AndroidKey 	TableLayout
syn keyword AndroidKey 	Button
syn keyword AndroidKey 	Text
syn keyword AndroidKey 	SeekBar
syn keyword AndroidKey 	AlertDialog

hi link AndroidKey KNF_ANDROIDKEY


"----- java
syn region  javaString   start=+"+ end=+"+ end=+$+
hi def link javaString   String


syn keyword javaExternal	native package
syn match javaExternal		"\<import\>\(\s\+static\>\)\?"
syn keyword javaError		goto const
syn keyword javaConditional	if else switch
syn keyword javaRepeat		while for do
syn keyword javaBoolean		true false
syn keyword javaConstant	null
syn keyword javaTypedef		this super
syn keyword javaOperator	new instanceof
syn keyword javaType		boolean char byte short int long float double
syn keyword javaType		void
syn keyword javaStatement	return
syn keyword javaStorageClass	static synchronized transient volatile final strictfp serializable
syn keyword javaExceptions	throw try catch finally for
syn keyword javaAssert		assert
syn keyword javaMethodDecl	synchronized throws
syn keyword javaClassDecl	extends implements interface
" to differentiate the keyword class from MyClass.class we use a match here
syn match   javaTypedef		"\.\s*\<class\>"ms=s+1
syn keyword javaClassDecl	enum
syn match   javaClassDecl	"^class\>"
syn match   javaClassDecl	"[^.]\s*\<class\>"ms=s+1
syn match   javaAnnotation	"@\([_$a-zA-Z][_$a-zA-Z0-9]*\.\)*[_$a-zA-Z][_$a-zA-Z0-9]*\>"
syn match   javaClassDecl	"@interface\>"
syn keyword javaBranch		break continue nextgroup=javaUserLabelRef skipwhite
syn match   javaUserLabelRef	"\k\+" contained
syn match   javaVarArg		"\.\.\."
syn keyword javaScopeDecl	public protected private abstract new
syn keyword javaLangObject clone equals finalize getClass hashCode
syn keyword javaLangObject notify notifyAll toString wait
syn keyword javaLabel		default
syn keyword javaTodo		 contained TODO FIXME XXX

hi link javaConditional 	Keyword
hi link javaExceptions		Keyword

" command="e /home/knxy/confignewpc/myvim/plugin/listcolorsname.vim"

