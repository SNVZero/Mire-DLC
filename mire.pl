% ��������� ������� ��� mirebot.
:- debug(mirebot).

% ������������� ������ socket �� ���������� Prolog.
:- use_module(library(socket)).

% �������� ��������������� ��������� � ����� ��� �����������.
hello(Stream) :-
  writeln(Stream, 'bot'),
  flush_output(Stream),
  writeln(Stream, 'play rock'),
  flush_output(Stream).

main :-
  setup_call_cleanup(
      tcp_connect(localhost:3333, Stream, []),
      hello(Stream),
      close(Stream)).

