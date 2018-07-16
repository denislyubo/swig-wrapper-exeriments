%module second
%{
extern uint32_t CreateSecond();
extern void DeleteSecond(uint32_t);
%}

extern "C" {
uint32_t CreateSecond();
void DeleteSecond(uint32_t);
}