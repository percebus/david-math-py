from hamcrest import assert_that, equal_to, is_
from pytest_bdd import given, parsers, scenarios, then, when

scenarios("grades/02/Additions 01.feature")


@given(
        parsers.parse("A first number {number}"),
        converters={"number": int},
        target_fixture="context")
def given_a_first_number(number: int) -> None:
    return {"a": number}

@given(
        parsers.parse("A second number {number}"),
        converters={"number": int})
def given_a_second_number(number: int, context: dict) -> None:
    context["b"] = number
    return context

@when("I add the numbers")
def when_I_add_the_numbers(context: dict) -> None:
    a: int = context["a"]
    b: int = context["b"]
    result: int = a + b
    context["result"] = result
    return context

@then(
        parsers.parse("I get the sum {sum}"),
        converters={"sum": int})
def then_I_get_the_sum(sum: int, context: dict) -> None:
    result: int = context["result"]
    assert_that(result, is_(equal_to(sum)))
    return context
