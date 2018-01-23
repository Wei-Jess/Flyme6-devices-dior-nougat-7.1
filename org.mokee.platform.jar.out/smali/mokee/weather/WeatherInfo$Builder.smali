.class public Lmokee/weather/WeatherInfo$Builder;
.super Ljava/lang/Object;
.source "WeatherInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/weather/WeatherInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAqi:Ljava/lang/String;

.field private mCity:Ljava/lang/String;

.field private mConditionCode:I

.field private mForecastList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmokee/weather/WeatherInfo$DayForecast;",
            ">;"
        }
    .end annotation
.end field

.field private mHumidity:D

.field private mTempUnit:I

.field private mTemperature:D

.field private mTimestamp:J

.field private mTodaysHighTemp:D

.field private mTodaysLowTemp:D

.field private mUv:Ljava/lang/String;

.field private mWindDirection:D

.field private mWindSpeed:D

.field private mWindSpeedUnit:I


# direct methods
.method public constructor <init>(Ljava/lang/String;DI)V
    .locals 4
    .param p1, "cityName"    # Ljava/lang/String;
    .param p2, "temperature"    # D
    .param p4, "tempUnit"    # I

    .prologue
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/16 v0, 0xc80

    iput v0, p0, Lmokee/weather/WeatherInfo$Builder;->mConditionCode:I

    .line 74
    iput-wide v2, p0, Lmokee/weather/WeatherInfo$Builder;->mTodaysHighTemp:D

    .line 75
    iput-wide v2, p0, Lmokee/weather/WeatherInfo$Builder;->mTodaysLowTemp:D

    .line 76
    iput-wide v2, p0, Lmokee/weather/WeatherInfo$Builder;->mHumidity:D

    .line 77
    iput-wide v2, p0, Lmokee/weather/WeatherInfo$Builder;->mWindSpeed:D

    .line 78
    iput-wide v2, p0, Lmokee/weather/WeatherInfo$Builder;->mWindDirection:D

    .line 79
    const/4 v0, 0x2

    iput v0, p0, Lmokee/weather/WeatherInfo$Builder;->mWindSpeedUnit:I

    .line 80
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmokee/weather/WeatherInfo$Builder;->mTimestamp:J

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lmokee/weather/WeatherInfo$Builder;->mForecastList:Ljava/util/List;

    .line 94
    if-nez p1, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "City name can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid temperature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_1
    invoke-direct {p0, p4}, Lmokee/weather/WeatherInfo$Builder;->isValidTempUnit(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid temperature unit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_2
    iput-object p1, p0, Lmokee/weather/WeatherInfo$Builder;->mCity:Ljava/lang/String;

    .line 104
    iput-wide p2, p0, Lmokee/weather/WeatherInfo$Builder;->mTemperature:D

    .line 105
    iput p4, p0, Lmokee/weather/WeatherInfo$Builder;->mTempUnit:I

    .line 93
    return-void
.end method

.method private isValidTempUnit(I)Z
    .locals 1
    .param p1, "unit"    # I

    .prologue
    .line 255
    packed-switch p1, :pswitch_data_0

    .line 260
    const/4 v0, 0x0

    return v0

    .line 258
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isValidWindSpeedUnit(I)Z
    .locals 1
    .param p1, "unit"    # I

    .prologue
    .line 265
    packed-switch p1, :pswitch_data_0

    .line 270
    const/4 v0, 0x0

    return v0

    .line 268
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public build()Lmokee/weather/WeatherInfo;
    .locals 6

    .prologue
    .line 235
    new-instance v0, Lmokee/weather/WeatherInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmokee/weather/WeatherInfo;-><init>(Lmokee/weather/WeatherInfo;)V

    .line 236
    .local v0, "info":Lmokee/weather/WeatherInfo;
    iget-object v1, p0, Lmokee/weather/WeatherInfo$Builder;->mCity:Ljava/lang/String;

    invoke-static {v0, v1}, Lmokee/weather/WeatherInfo;->-set1(Lmokee/weather/WeatherInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 237
    iget v1, p0, Lmokee/weather/WeatherInfo$Builder;->mConditionCode:I

    invoke-static {v0, v1}, Lmokee/weather/WeatherInfo;->-set2(Lmokee/weather/WeatherInfo;I)I

    .line 238
    iget-object v1, p0, Lmokee/weather/WeatherInfo$Builder;->mAqi:Ljava/lang/String;

    invoke-static {v0, v1}, Lmokee/weather/WeatherInfo;->-set0(Lmokee/weather/WeatherInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 239
    iget-object v1, p0, Lmokee/weather/WeatherInfo$Builder;->mUv:Ljava/lang/String;

    invoke-static {v0, v1}, Lmokee/weather/WeatherInfo;->-set11(Lmokee/weather/WeatherInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    iget-wide v2, p0, Lmokee/weather/WeatherInfo$Builder;->mTemperature:D

    invoke-static {v0, v2, v3}, Lmokee/weather/WeatherInfo;->-set7(Lmokee/weather/WeatherInfo;D)D

    .line 241
    iget v1, p0, Lmokee/weather/WeatherInfo$Builder;->mTempUnit:I

    invoke-static {v0, v1}, Lmokee/weather/WeatherInfo;->-set6(Lmokee/weather/WeatherInfo;I)I

    .line 242
    iget-wide v2, p0, Lmokee/weather/WeatherInfo$Builder;->mHumidity:D

    invoke-static {v0, v2, v3}, Lmokee/weather/WeatherInfo;->-set4(Lmokee/weather/WeatherInfo;D)D

    .line 243
    iget-wide v2, p0, Lmokee/weather/WeatherInfo$Builder;->mWindSpeed:D

    invoke-static {v0, v2, v3}, Lmokee/weather/WeatherInfo;->-set13(Lmokee/weather/WeatherInfo;D)D

    .line 244
    iget-wide v2, p0, Lmokee/weather/WeatherInfo$Builder;->mWindDirection:D

    invoke-static {v0, v2, v3}, Lmokee/weather/WeatherInfo;->-set12(Lmokee/weather/WeatherInfo;D)D

    .line 245
    iget v1, p0, Lmokee/weather/WeatherInfo$Builder;->mWindSpeedUnit:I

    invoke-static {v0, v1}, Lmokee/weather/WeatherInfo;->-set14(Lmokee/weather/WeatherInfo;I)I

    .line 246
    iget-wide v2, p0, Lmokee/weather/WeatherInfo$Builder;->mTimestamp:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_0
    invoke-static {v0, v2, v3}, Lmokee/weather/WeatherInfo;->-set8(Lmokee/weather/WeatherInfo;J)J

    .line 247
    iget-object v1, p0, Lmokee/weather/WeatherInfo$Builder;->mForecastList:Ljava/util/List;

    invoke-static {v0, v1}, Lmokee/weather/WeatherInfo;->-set3(Lmokee/weather/WeatherInfo;Ljava/util/List;)Ljava/util/List;

    .line 248
    iget-wide v2, p0, Lmokee/weather/WeatherInfo$Builder;->mTodaysHighTemp:D

    invoke-static {v0, v2, v3}, Lmokee/weather/WeatherInfo;->-set9(Lmokee/weather/WeatherInfo;D)D

    .line 249
    iget-wide v2, p0, Lmokee/weather/WeatherInfo$Builder;->mTodaysLowTemp:D

    invoke-static {v0, v2, v3}, Lmokee/weather/WeatherInfo;->-set10(Lmokee/weather/WeatherInfo;D)D

    .line 250
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmokee/weather/WeatherInfo;->-set5(Lmokee/weather/WeatherInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 251
    return-object v0

    .line 246
    :cond_0
    iget-wide v2, p0, Lmokee/weather/WeatherInfo$Builder;->mTimestamp:J

    goto :goto_0
.end method

.method public setAqi(Ljava/lang/String;)Lmokee/weather/WeatherInfo$Builder;
    .locals 0
    .param p1, "aqi"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lmokee/weather/WeatherInfo$Builder;->mAqi:Ljava/lang/String;

    .line 179
    return-object p0
.end method

.method public setForecast(Ljava/util/List;)Lmokee/weather/WeatherInfo$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmokee/weather/WeatherInfo$DayForecast;",
            ">;)",
            "Lmokee/weather/WeatherInfo$Builder;"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "forecasts":Ljava/util/List;, "Ljava/util/List<Lmokee/weather/WeatherInfo$DayForecast;>;"
    if-nez p1, :cond_0

    .line 197
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Forecast list can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_0
    iput-object p1, p0, Lmokee/weather/WeatherInfo$Builder;->mForecastList:Ljava/util/List;

    .line 200
    return-object p0
.end method

.method public setHumidity(D)Lmokee/weather/WeatherInfo$Builder;
    .locals 3
    .param p1, "humidity"    # D

    .prologue
    .line 124
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid humidity value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    iput-wide p1, p0, Lmokee/weather/WeatherInfo$Builder;->mHumidity:D

    .line 129
    return-object p0
.end method

.method public setTimestamp(J)Lmokee/weather/WeatherInfo$Builder;
    .locals 1
    .param p1, "timeStamp"    # J

    .prologue
    .line 114
    iput-wide p1, p0, Lmokee/weather/WeatherInfo$Builder;->mTimestamp:J

    .line 115
    return-object p0
.end method

.method public setTodaysHigh(D)Lmokee/weather/WeatherInfo$Builder;
    .locals 3
    .param p1, "todaysHigh"    # D

    .prologue
    .line 210
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid temperature value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    iput-wide p1, p0, Lmokee/weather/WeatherInfo$Builder;->mTodaysHighTemp:D

    .line 214
    return-object p0
.end method

.method public setTodaysLow(D)Lmokee/weather/WeatherInfo$Builder;
    .locals 3
    .param p1, "todaysLow"    # D

    .prologue
    .line 223
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid temperature value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_0
    iput-wide p1, p0, Lmokee/weather/WeatherInfo$Builder;->mTodaysLowTemp:D

    .line 227
    return-object p0
.end method

.method public setUv(Ljava/lang/String;)Lmokee/weather/WeatherInfo$Builder;
    .locals 0
    .param p1, "uv"    # Ljava/lang/String;

    .prologue
    .line 186
    iput-object p1, p0, Lmokee/weather/WeatherInfo$Builder;->mUv:Ljava/lang/String;

    .line 187
    return-object p0
.end method

.method public setWeatherCondition(I)Lmokee/weather/WeatherInfo$Builder;
    .locals 2
    .param p1, "conditionCode"    # I

    .prologue
    .line 167
    invoke-static {p1}, Lmokee/weather/WeatherInfo;->-wrap0(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid weather condition code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    iput p1, p0, Lmokee/weather/WeatherInfo$Builder;->mConditionCode:I

    .line 171
    return-object p0
.end method

.method public setWind(DDI)Lmokee/weather/WeatherInfo$Builder;
    .locals 3
    .param p1, "windSpeed"    # D
    .param p3, "windDirection"    # D
    .param p5, "windSpeedUnit"    # I

    .prologue
    .line 144
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid wind speed value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid wind direction value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_1
    invoke-direct {p0, p5}, Lmokee/weather/WeatherInfo$Builder;->isValidWindSpeedUnit(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid speed unit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_2
    iput-wide p1, p0, Lmokee/weather/WeatherInfo$Builder;->mWindSpeed:D

    .line 154
    iput p5, p0, Lmokee/weather/WeatherInfo$Builder;->mWindSpeedUnit:I

    .line 155
    iput-wide p3, p0, Lmokee/weather/WeatherInfo$Builder;->mWindDirection:D

    .line 156
    return-object p0
.end method
