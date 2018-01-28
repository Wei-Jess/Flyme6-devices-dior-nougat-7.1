.class public Lmokee/weather/WeatherInfo$DayForecast$Builder;
.super Ljava/lang/Object;
.source "WeatherInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/weather/WeatherInfo$DayForecast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mConditionCode:I

.field mHigh:D

.field mLow:D


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "conditionCode"    # I

    .prologue
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    iput-wide v0, p0, Lmokee/weather/WeatherInfo$DayForecast$Builder;->mLow:D

    .line 485
    iput-wide v0, p0, Lmokee/weather/WeatherInfo$DayForecast$Builder;->mHigh:D

    .line 495
    invoke-static {p1}, Lmokee/weather/WeatherInfo;->-wrap0(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 496
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid weather condition code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 498
    :cond_0
    iput p1, p0, Lmokee/weather/WeatherInfo$DayForecast$Builder;->mConditionCode:I

    .line 494
    return-void
.end method


# virtual methods
.method public build()Lmokee/weather/WeatherInfo$DayForecast;
    .locals 4

    .prologue
    .line 534
    new-instance v0, Lmokee/weather/WeatherInfo$DayForecast;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmokee/weather/WeatherInfo$DayForecast;-><init>(Lmokee/weather/WeatherInfo$DayForecast;)V

    .line 535
    .local v0, "forecast":Lmokee/weather/WeatherInfo$DayForecast;
    iget-wide v2, p0, Lmokee/weather/WeatherInfo$DayForecast$Builder;->mLow:D

    iput-wide v2, v0, Lmokee/weather/WeatherInfo$DayForecast;->mLow:D

    .line 536
    iget-wide v2, p0, Lmokee/weather/WeatherInfo$DayForecast$Builder;->mHigh:D

    iput-wide v2, v0, Lmokee/weather/WeatherInfo$DayForecast;->mHigh:D

    .line 537
    iget v1, p0, Lmokee/weather/WeatherInfo$DayForecast$Builder;->mConditionCode:I

    iput v1, v0, Lmokee/weather/WeatherInfo$DayForecast;->mConditionCode:I

    .line 538
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmokee/weather/WeatherInfo$DayForecast;->mKey:Ljava/lang/String;

    .line 539
    return-object v0
.end method

.method public setHigh(D)Lmokee/weather/WeatherInfo$DayForecast$Builder;
    .locals 3
    .param p1, "high"    # D

    .prologue
    .line 507
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid high forecast temperature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_0
    iput-wide p1, p0, Lmokee/weather/WeatherInfo$DayForecast$Builder;->mHigh:D

    .line 511
    return-object p0
.end method

.method public setLow(D)Lmokee/weather/WeatherInfo$DayForecast$Builder;
    .locals 3
    .param p1, "low"    # D

    .prologue
    .line 520
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid low forecast temperature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :cond_0
    iput-wide p1, p0, Lmokee/weather/WeatherInfo$DayForecast$Builder;->mLow:D

    .line 524
    return-object p0
.end method
