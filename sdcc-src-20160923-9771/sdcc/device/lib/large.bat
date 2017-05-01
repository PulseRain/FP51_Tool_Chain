setlocal
set AR=sdar
set RANLIB=sdranlib

set REL_FLOAT=_atof.rel _schar2fs.rel _sint2fs.rel _slong2fs.rel _uchar2fs.rel _uint2fs.rel _ulong2fs.rel _fs2schar.rel _fs2sint.rel _fs2slong.rel _fs2uchar.rel _fs2uint.rel _fs2ulong.rel _fsadd.rel _fsdiv.rel _fsmul.rel _fssub.rel _fseq.rel _fsgt.rel _fslt.rel _fsneq.rel fabsf.rel frexpf.rel ldexpf.rel expf.rel powf.rel sincosf.rel sinf.rel cosf.rel logf.rel log10f.rel sqrtf.rel tancotf.rel tanf.rel cotf.rel asincosf.rel asinf.rel acosf.rel atanf.rel atan2f.rel sincoshf.rel sinhf.rel coshf.rel tanhf.rel floorf.rel ceilf.rel modff.rel errno.rel
set REL_LONG=_divslong.rel _modslong.rel _modulong.rel
set REL_SDCC=atoi.rel atol.rel atoll.rel abs.rel labs.rel rand.rel iscntrl.rel isdigit.rel isgraph.rel isprint.rel ispunct.rel isspace.rel islower.rel isupper.rel isxdigit.rel _strcat.rel _strchr.rel _strcmp.rel _strcpy.rel _strcspn.rel _strncat.rel _strncmp.rel _strncpy.rel _strpbrk.rel _strrchr.rel _strspn.rel _strstr.rel _strtok.rel _memchr.rel _memcmp.rel _memcpy.rel _memset.rel calloc.rel malloc.rel realloc.rel free.rel printf_large.rel puts.rel gets.rel assert.rel time.rel

set REL_FLOAT=%REL_FLOAT% _fscmp.rel _fsget1arg.rel _fsget2args.rel _fsnormalize.rel _fsreturnval.rel _fsrshift.rel _fsswapargs.rel _logexpf.rel isnan.rel isinf.rel
set REL_INT=%REL_INT% _divsint.rel _divuint.rel _modsint.rel _moduint.rel _mulint.rel
set REL_LONG=%REL_LONG% _divulong.rel _mullong.rel
set REL_SDCC=%REL_SDCC% _autobaud.rel _bp.rel _decdptr.rel _gptrget.rel _gptrgetc.rel _gptrput.rel _ser.rel _setjmp.rel serial.rel _itoa.rel _ltoa.rel _spx.rel _startup.rel _strlen.rel _memmove.rel _heap.rel sprintf.rel vprintf.rel printf_fast.rel printf_fast_f.rel printf_tiny.rel printfl.rel bpx.rel

set MODELS=large

  copy *.rel large
  cd large
  del *.lib
  set SDCCLIB_CC=sdcc --xstack --use-stdout --model-large -c
  pause
  %AR% -S -cq libfloat.lib %REL_FLOAT%
  pause
  %RANLIB% libfloat.lib
  pause
  %AR% -S -cq libint.lib %REL_INT%
  pause
  %RANLIB% libint.lib
  pause
  %AR% -S -cq liblong.lib %REL_LONG%
  pause
  %RANLIB% liblong.lib
  pause
  %AR% -S -cq libsdcc.lib %REL_SDCC%
  pause
  %RANLIB% libsdcc.lib
  pause
  del *.rel
  cd ..\mcs51
  pause
  for %%I in (*.asm) do sdas8051 -plosgff %%I
  for %%I in (*.rel) do %AR% -S -cq ..\large\mcs51.lib %%I
  pause
  %RANLIB% ..\large\mcs51.lib
  del *.rel
  popd
)
endlocal
