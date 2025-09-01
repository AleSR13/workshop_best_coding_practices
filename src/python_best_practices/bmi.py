import pandas as pd

def calculate_bmi(height: float, weight: float) -> float:
    """Calculate BMI

    Args:
        height (float): Height in meters
        weight (float): Weight in kg

    Raises:
        ValueError: If height is less or equal than 0
        ValueError: If weight is less or equal than 0

    Returns:
        float: Calculated BMI
    """
    if height <= 0:
        raise ValueError("Height must be greater than zero.")
    if weight <= 0:
        raise ValueError("Weight must be greater than zero.")
    return weight / (height**2)


def calculate_bmi_df(df: pd.DataFrame) -> pd.DataFrame:
    """Calculate BMI for a data frame

    Args:
        df (pd.DataFrame): Dataframe containing at least two columns: height 
        and weight

    Raises:
        ValueError: If data frame does not contain the expected columns

    Returns:
        pd.DataFrame: The same data frame given as input but with an extra 
        column for the BMI
    """
    if not {"height", "weight"}.issubset(df.columns):
        raise ValueError(
            "DataFrame must contain 'height' and 'weight' columns."
        )
    df["bmi"] = df.apply(
        lambda row: calculate_bmi(row["height"], row["weight"]), axis=1
    )
    return df
