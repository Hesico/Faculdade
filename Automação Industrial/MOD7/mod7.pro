CoDeSys+,   ?         !         @        @   2.3.9.62?    @   ConfigExtension?          CommConfigEx7             CommConfigExEnd   ME?                  IB                    % QB                    %   ME_End   CM?      CM_End   CT?   ????????   CT_End   ConfigExtensionEnd/    @                             j? a +    @      ????????             Ŝ a        ?   @   D   C:\PROGRAM FILES (X86)\3S SOFTWARE\CODESYS V2.3\LIBRARY\STANDARD.LIB          CONCAT               STR1               ??              STR2               ??                 CONCAT                                         h??=  ?   ????           CTD           M             ??           Variable for CD Edge Detection      CD            ??           Count Down on rising edge    LOAD            ??	           Load Start Value    PV           ??
           Start Value       Q            ??           Counter reached 0    CV           ??           Current Counter Value             h??=  ?   ????           CTU           M             ??            Variable for CU Edge Detection       CU            ??       
    Count Up    RESET            ??	           Reset Counter to 0    PV           ??
           Counter Limit       Q            ??           Counter reached the Limit    CV           ??           Current Counter Value             h??=  ?   ????           CTUD           MU             ??            Variable for CU Edge Detection    MD             ??            Variable for CD Edge Detection       CU            ??
       
    Count Up    CD            ??           Count Down    RESET            ??           Reset Counter to Null    LOAD            ??           Load Start Value    PV           ??           Start Value / Counter Limit       QU            ??           Counter reached Limit    QD            ??           Counter reached Null    CV           ??           Current Counter Value             h??=  ?   ????           DELETE               STR               ??              LEN           ??	              POS           ??
                 DELETE                                         h??=  ?   ????           F_TRIG           M             ??                 CLK            ??           Signal to detect       Q            ??	           Edge detected             h??=  ?   ????           FIND               STR1               ??	              STR2               ??
                 FIND                                     h??=  ?   ????           INSERT               STR1               ??	              STR2               ??
              POS           ??                 INSERT                                         h??=  ?   ????           LEFT               STR               ??              SIZE           ??                 LEFT                                         h??=  ?   ????           LEN               STR               ??                 LEN                                     h??=  ?   ????           MID               STR               ??              LEN           ??	              POS           ??
                 MID                                         h??=  ?   ????           R_TRIG           M             ??                 CLK            ??           Signal to detect       Q            ??	           Edge detected             h??=  ?   ????           REPLACE               STR1               ??	              STR2               ??
              L           ??              P           ??                 REPLACE                                         h??=  ?   ????           RIGHT               STR               ??              SIZE           ??                 RIGHT                                         h??=  ?   ????           RS               SET            ??              RESET1            ??	                 Q1            ??                       h??=  ?   ????           RTC           M             ??              DiffTime            ??                 EN            ??              PDT           ??                 Q            ??              CDT           ??                       h??=  ?   ????           SEMA           X             ??                 CLAIM            ??
              RELEASE            ??                 BUSY            ??                       h??=  ?   ????           SR               SET1            ??              RESET            ??                 Q1            ??                       h??=  ?   ????           TOF           M             ??           internal variable 	   StartTime            ??           internal variable       IN            ??       ?    starts timer with falling edge, resets timer with rising edge    PT           ??           time to pass, before Q is set       Q            ??       2    is FALSE, PT seconds after IN had a falling edge    ET           ??           elapsed time             h??=  ?   ????           TON           M             ??           internal variable 	   StartTime            ??           internal variable       IN            ??       ?    starts timer with rising edge, resets timer with falling edge    PT           ??           time to pass, before Q is set       Q            ??       0    is TRUE, PT seconds after IN had a rising edge    ET           ??           elapsed time             h??=  ?   ????           TP        	   StartTime            ??           internal variable       IN            ??       !    Trigger for Start of the Signal    PT           ??       '    The length of the High-Signal in 10ms       Q            ??           The pulse    ET           ??       &    The current phase of the High-Signal             h??=  ?   ????    B   C:\PROGRAM FILES (X86)\3S SOFTWARE\CODESYS V2.3\LIBRARY\IECSFC.LIB          SFCACTIONCONTROL     
      S_FF                 RS    ??              L_TMR                    TON    ??              D_TMR                    TON    ??              P_TRIG                 R_TRIG    ??              SD_TMR                    TON    ??              SD_FF                 RS    ??              DS_FF                 RS    ??              DS_TMR                    TON    ??              SL_FF                 RS    ??              SL_TMR                    TON    ??           
      N            ??           Non stored action qualifier    R0            ??       #    Overriding reset action qualifier    S0            ??           Set (stored) action qualifier    L            ??	           Time limited action qualifier    D            ??
           Time delayed action qualifier    P            ??           Pulse action qualifier    SD            ??       *    Stored and time delayed action qualifier    DS            ??       %    Delayed and stored action qualifier    SL            ??       *    Stored and time limited action qualifier    T           ??           Current time       Q            ??       1    Associated action is executed, if Q equals TRUE             h?=  ?    ????    R   C:\PROGRAM FILES (X86)\COMMON FILES\CAA-TARGETS\3S\LIB_PLCWINNT\SYSLIBCALLBACK.LIB          SYSCALLBACKREGISTER            	   iPOUIndex           ??       !    POU Index of callback function.    Event            	   RTS_EVENT   ??           Event to register       SysCallbackRegister                                      ּ9;  ?   ????           SYSCALLBACKUNREGISTER            	   iPOUIndex           ??       !    POU Index of callback function.    Event            	   RTS_EVENT   ??           Event to register       SysCallbackUnregister                                      ּ9;  ?   ????                  PLC_PRG           saida                 R_TRIG    +               contado                    CTD    +               CTD                    CTU    +               CTUD                    CTU    +                                (? a  @    ????            
 ?      +   ( ?!      K   ?!     K   ?!     K   ?!     K   ?!                  "         +     ??localhost ??? ? ?],w?\E ?],w        ^ @       H? |??       @     ^ ?\E     p? ??? ?? ??   s?? ͻ?     ^ ?\E ?\E 4       ?  x? ?? ???? ?? 	   ??   ^ ?\E ͻH??? 8? ?? 08? ?????? ???                  ?? H????     ?   ?       ??}Uӳ??? `??S            Tcp/Ip tarefa2.pro Local_ 3S Tcp/Ip driver    5   ?  Address IP address or hostname 
   localhost    ?  Port     ?7   d   Motorola byteorder                No    Yes ?          ?       ??}Uӳ??? `??S            Tcp/Ip tarefa2.pro Local_ 3S Tcp/Ip driver    5   ?  Address IP address or hostname 
   localhost    ?  Port     ?7   d   Motorola byteorder                No    Yes   K         @   Ŝ a1H        ????????                     CoDeSys 1-2.2   ????  ????????                     ?          ?      
   ?         ?         ?          ?                    "          $                                                   '          (          ?          ?          ?          ?          ?         ?          ?          ?          ?         ?          ?          ?          ?          ?         ?      ?   ?       P  ?          ?         ?       ?  ?                    ~          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?       @  ?       @  ?       @  ?       @  ?       @  ?       @  ?         ?         ?          ?       ?  M         N          O          P          `         a          t          y          z          b         c          X          d         e         _          Q          \         R          K          U         X         Z         ?          ?         ?      
   ?         ?         ?         ?         ?         ?          ?          ?         ?      ?????          ?          ?      (                                                                        "         !          #          $         ?          ^          f         g          h          i          j          k         F          H         J         L          N         P         R          U         S          T          V          W          ?          ?          l          o          p          q          r          s         u          ?          v         ?          ?      ????|         ~         ?         x          z      (   ?          ?         %         ?          ?          ?         @         ?          ?          ?         &          ?          	                   ?          ?          ?         ?          ?         ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?                            I         J         K          	          L         M          ?                             ?          P         Q          S          )          	          	          ?           	          +	       @  ,	       @  -	      ????Z	      ????[	      ????????        ?????   ?         ?         ?          ?                    "          $                                                   '          (          ?          ?          ?          ?          ?         ?          ?          ?          ?         ?          ?          ?          ?          ?         ?      ?   ?       P  ?          ?         ?       ?  ?          ?         ?          ?          ?          ?          ?         ?          ?          ?          ?       ?  ?       ?  ?       ?  ?       ?  ?         ?          a          t          y          z          b         c         X          d         e         _          Q          \         R          K          U         X         Z         ?          ?         ?      
   ?         ?         ?         ?         ?         ?          ?          ?         ?      ?????          ?          ?      (                                                                        "         !          #          $         ?          ^          f          g          h          i          j          k         F          H         J         L          N         P         R          U         S          T          V          W          ?         ?          l          o          p          q          r          s         u          ?          v         ?          w          x          ?      ????|         ~         ?         x          z      (   ?          ?         %         ?          ?          ?         @         ?          ?          ?      ?  ?      ?  ?         ?          ?         &          ?          	                   ?          ?          ?         ?          ?         ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?                                                 I         J         K          	          L         M          ?                             ?          P         Q          S          )          	          	          ?           	          +	       @  ,	       @  -	      ????Z	      ????[	      ????????        ????????????  ????????              Standard Parameter OD                        ????    ???                  ????    ???                                Escolher tipo de entrada.      
      BOOL   8-bit-Integer   16-bit-Integer   32-bit-Integer   byte   word   double word   real   string   long real (64-bit)                          low   middle   high                       	   read only
   write only
   read-write                             Standard Variable OD                        ????    ???                  ????    ???                          low   middle   high                       	   read only
   write only
   read-write                                                 ?  	   	   Name                 ????
   Index                 ??         SubIndex                 ?          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write       Variable    	             ????
   Value                Variable       Min                Variable       Max                Variable          5  
   	   Name                 ????
   Index                 ??         SubIndex                 ?          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write    	   Type          ~         INT   UINT   DINT   UDINT   LINT   ULINT   SINT   USINT   BYTE   WORD   DWORD   REAL   LREAL   STRING    
   Value                Type       Default                Type       Min                Type       Max                Type          5  
   	   Name                 ????
   Index                 ??         SubIndex                 ?          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write    	   Type          ~         INT   UINT   DINT   UDINT   LINT   ULINT   SINT   USINT   BYTE   WORD   DWORD   REAL   LREAL   STRING    
   Value                Type       Default                Type       Min                Type       Max                Type          d        Member    	             ????   Index-Offset                 ??         SubIndex-Offset                 ?          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write       Min                Member       Max                Member          ?  	   	   Name                 ????   Member    	             ????
   Value                Member    
   Index                 ??         SubIndex                 ?          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write       Min                Member       Max                Member          ?  	   	   Name                 ????
   Index                 ??         SubIndex                 ?          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write       Variable    	             ????
   Value                Variable       Min                Variable       Max                Variable                         ????  ????????               ?   _Dummy@    @   @@    @   @             ??@             ??@@   @     ?v@@   ; @+   ????  ????????                                  ?v@      4@   ?             ?v@      D@   ?                       ?       @                           ?f@      4@     ?f@                ?v@     ?f@     @u@     ?f@        ???           Module.Root-1__not_found__    Steuerungskonfiguration???? IB          % QB          % MB          %    Ŝ a	J? a     ????????           VAR_GLOBAL
END_VAR
                                                                                  "     ????????              Ŝ a             %      start   Called when program starts    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    ?      stop   Called when program stops    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    ?      before_reset   Called before reset takes place    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    ?      after_reset   Called after reset took place    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    ?      shutdown#   Called before shutdown is performed    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    ?      excpt_cycletime_overflow)   Called when a cycletime overflow happened    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    ?      excpt_watchdog%   Software watchdog OF IEC-task expired    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    ?      excpt_fieldbus   Fieldbus error occurred    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 	   ?      excpt_ioupdate   IO-update error    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 
   ?      excpt_illegal_instruction   Illegal instruction    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    ?      excpt_access_violation   Access violation    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    ?      excpt_priv_instruction   Privileged instruction    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    ?      excpt_dividebyzero   Division BY zero    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    ?      excpt_fpu_error   FPU: Unspecified error    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    ?      excpt_fpu_denormal_operand   FPU: Denormal operand    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    ?      excpt_fpu_dividebyzero   FPU: Division BY zero    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    ?      excpt_fpu_invalid_operation   FPU: Invalid operation    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    ?      excpt_fpu_overflow   FPU: Overflow    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    ?      excpt_fpu_stack_check   FPU: Stack check    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    ?      after_reading_inputs   Called after reading of inputs    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    ?      before_writing_outputs    Called before writing of outputs    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    ?   
   debug_loop   Debug loop at breakpoint    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    ?      interrupt_1   Interrupt 1    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 $   ?      interrupt_2   Interrupt 2    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 %   ?      interrupt_3   Interrupt 3    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 &   ?      interrupt_4   Interrupt 4    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 '   ?      interrupt_5   Interrupt 5    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 (   ?      interrupt_6   Interrupt 6    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 )   ?      interrupt_7   Interrupt 7    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 *   ?      interrupt_8   Interrupt 8    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 +   ?      interrupt_9   Interrupt 9    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 ,   ?      interrupt_10   Interrupt 10    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 -   ?      interrupt_11   Interrupt 11    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 .   ?      interrupt_12   Interrupt 12    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 /   ?      interrupt_13   Interrupt 13    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 0   ?      interrupt_14   Interrupt 14    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 1   ?      interrupt_15   Interrupt 15    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 2   ?   $????  ????????               ????????           Standard Ŝ a	Ŝ a      ????????                         	͜ a     ????????           VAR_CONFIG
END_VAR
                                                                                   '           	     ????????           Configura??o de vari?veis Ɯ a	Ɯ a	     ????????           VAR_CONFIG
END_VAR
                                                                                               '              , k ? S?        J  Vari?veis globais @      EMG      BracoO      Manual      EsteiraE      EsteiraS      Reset      MovX      Movz      StartLed      Start      SensE      SensS      MovingX      MovingZ      Auto      Stop      PeP      cond      Cont      StopLed      Estado      Emit      ResLed    Ɯ a	J? a     ????????        q  VAR_GLOBAL
	EsteiraE:BOOL;
	EsteiraS:BOOL;
	PeP:BOOL;
	SensE:BOOL;
	SensS:BOOL;
	ItemDetect:BOOL;
	MovX:BOOL;
	Movz:BOOL;
	Auto:BOOL;
	Manual:BOOL;
	Start:BOOL;
	Stop:BOOL;
	Reset:BOOL;
	StartLed:BOOL;
	StopLed:BOOL;
	ResLed:BOOL;
	Estado:BOOL;
	EMG:BOOL;
	cond:BOOL;
	Cont:INT;
	BracoO:BOOL;
	Emit:BOOL;
	MovingX:BOOL;
	MovingZ:BOOL;
END_VAR
                                                                                                 ~   |0|0 @t    @R   Arial @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss?????                               -     ?   ???  ?3 ???   ? ???     
    @??  ???     @      DEFAULT             Sistema      ~   |0|0 @t    @R   Arial @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss?????                      )   HH':'mm':'ss @                             dd'-'MM'-'yyyy @       '     +   , $  u           PLC_PRG j? a	(? a      ????????        W   PROGRAM PLC_PRG
VAR
	saida: R_TRIG;
	contado: CTD;
	CTD: CTU;
	CTUD: CTU;
END_VAR      ?Start Estado Emit     ?	Estado?SensE  EsteiraE     ?	SensE?
ItemDetect?MovingX?MovingZ?MovX?MovzKEstado PePMovz     ?	?MovingZPeP?MovingX
ItemDetectKEstado Movz     ?	PeP?Movz
ItemDetect?SensEKEstado MovX     ?	?MovingX?MovingZPePMovX
ItemDetect?MovzKEstado Movz     ?	MovXMovz?MovingZ
ItemDetect?MovingXSensSKEstado PePEsteiraS     ?	?PePMovXMovzKEstado EsteiraSMovXMovz     ?	?EsteiraE?MovX?Movz?EsteiraEKEstado Emit     ??Stop EsteiraSEsteiraEEstado     ?Reset PePMovzMovXStop     ?	SensSECTUD ResetA1CTU  Cont      d                    ????  ????????            Standard.lib @*~?S    IecSfc.lib 2.6.14 10:37:46 @*~?S   SYSLIBCALLBACK.LIB @Є?S      CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        	   RTC @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @               F   SFCActionControl @      SFCActionType       SFCStepType                      Globale_Variablen @           b   SysCallbackRegister @   	   RTS_EVENT       RTS_EVENT_FILTER       RTS_EVENT_SOURCE                   SysCallbackUnregister @                              ????????           2 ?  ?           ????????????????  
             ????  ????????        ????  ????????                      POUs                PLC_PRG  +   ????             Tipos de dados  ????             Visualiza??es  ????              Vari?veis globais                 Configura??o de vari?veis  	                  Vari?veis globais     ????                                         ????????             Ɯ a?              ?                 	   localhost            P      	   localhost            P      	   localhost            P     ̜ a   aX&