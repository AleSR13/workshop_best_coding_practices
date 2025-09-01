import pytest
import pandas as pd
from python_best_practices.bmi import calculate_bmi, calculate_bmi_df


def test_calculate_bmi_valid():
    assert calculate_bmi(1.80, 75) == pytest.approx(75 / (1.80**2))


def test_calculate_bmi_invalid_height():
    with pytest.raises(ValueError, match="Height must be greater than zero."):
        calculate_bmi(0, 75)


def test_calculate_bmi_invalid_weight():
    with pytest.raises(ValueError, match="Weight must be greater than zero."):
        calculate_bmi(1.80, 0)


def test_calculate_bmi_df_valid():
    df = pd.DataFrame({"height": [1.80, 1.60], "weight": [75, 60]})
    result = calculate_bmi_df(df)
    expected_bmi = [75 / (1.80**2), 60 / (1.60**2)]
    assert result["bmi"].tolist() == pytest.approx(expected_bmi)


def test_calculate_bmi_df_missing_columns():
    df = pd.DataFrame({"h": [1.80], "w": [75]})
    with pytest.raises(
        ValueError,
        match="DataFrame must contain 'height' and 'weight' columns.",
    ):
        calculate_bmi_df(df)
