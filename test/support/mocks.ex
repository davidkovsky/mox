Mox.defmock(CalcMock, for: Calculator)
Mox.defmock(SciCalcMock, for: [Calculator, ScientificCalculator])

Mox.defmock(SciCalcMockWithoutOptional,
  for: [Calculator, ScientificCalculator],
  skip_optional_callbacks: true
)

Mox.defmock(MyMockWithoutModuledoc, for: Calculator)
Mox.defmock(MyMockWithFalseModuledoc, for: Calculator, moduledoc: false)
Mox.defmock(MyMockWithStringModuledoc, for: Calculator, moduledoc: "hello world")

Mox.defmock(MyMockWithMockedCallLogging,
  for: Calculator,
  log_mocked_calls: true,
  log_unmocked_calls: true
)

Mox.defmock(MyMockWithUnmockedCallLogging, for: Calculator, log_unmocked_calls: true)

Mox.defmock(MyMockWithoutMockedCallLogging, for: Calculator, log_mocked_calls: false)
Mox.defmock(MyMockWithoutUnmockedCallLogging, for: Calculator, log_unmocked_calls: false)
