.class Lmokee/weather/RequestInfo$Builder;
.super Ljava/lang/Object;
.source "RequestInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/weather/RequestInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private mCityName:Ljava/lang/String;

.field private mIsQueryOnly:Z

.field private mListener:Lmokee/weather/IRequestInfoListener;

.field private mLocation:Landroid/location/Location;

.field private mRequestType:I

.field private mTempUnit:I

.field private mWeatherLocation:Lmokee/weather/WeatherLocation;


# direct methods
.method public constructor <init>(Lmokee/weather/IRequestInfoListener;)V
    .locals 1
    .param p1, "listener"    # Lmokee/weather/IRequestInfoListener;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x2

    iput v0, p0, Lmokee/weather/RequestInfo$Builder;->mTempUnit:I

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmokee/weather/RequestInfo$Builder;->mIsQueryOnly:Z

    .line 72
    iput-object p1, p0, Lmokee/weather/RequestInfo$Builder;->mListener:Lmokee/weather/IRequestInfoListener;

    .line 71
    return-void
.end method

.method private isValidTempUnit(I)Z
    .locals 1
    .param p1, "unit"    # I

    .prologue
    .line 180
    packed-switch p1, :pswitch_data_0

    .line 185
    const/4 v0, 0x0

    return v0

    .line 183
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public build()Lmokee/weather/RequestInfo;
    .locals 2

    .prologue
    .line 167
    new-instance v0, Lmokee/weather/RequestInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmokee/weather/RequestInfo;-><init>(Lmokee/weather/RequestInfo;)V

    .line 168
    .local v0, "info":Lmokee/weather/RequestInfo;
    iget-object v1, p0, Lmokee/weather/RequestInfo$Builder;->mListener:Lmokee/weather/IRequestInfoListener;

    invoke-static {v0, v1}, Lmokee/weather/RequestInfo;->-set3(Lmokee/weather/RequestInfo;Lmokee/weather/IRequestInfoListener;)Lmokee/weather/IRequestInfoListener;

    .line 169
    iget v1, p0, Lmokee/weather/RequestInfo$Builder;->mRequestType:I

    invoke-static {v0, v1}, Lmokee/weather/RequestInfo;->-set5(Lmokee/weather/RequestInfo;I)I

    .line 170
    iget-object v1, p0, Lmokee/weather/RequestInfo$Builder;->mCityName:Ljava/lang/String;

    invoke-static {v0, v1}, Lmokee/weather/RequestInfo;->-set0(Lmokee/weather/RequestInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    iget-object v1, p0, Lmokee/weather/RequestInfo$Builder;->mWeatherLocation:Lmokee/weather/WeatherLocation;

    invoke-static {v0, v1}, Lmokee/weather/RequestInfo;->-set7(Lmokee/weather/RequestInfo;Lmokee/weather/WeatherLocation;)Lmokee/weather/WeatherLocation;

    .line 172
    iget-object v1, p0, Lmokee/weather/RequestInfo$Builder;->mLocation:Landroid/location/Location;

    invoke-static {v0, v1}, Lmokee/weather/RequestInfo;->-set4(Lmokee/weather/RequestInfo;Landroid/location/Location;)Landroid/location/Location;

    .line 173
    iget v1, p0, Lmokee/weather/RequestInfo$Builder;->mTempUnit:I

    invoke-static {v0, v1}, Lmokee/weather/RequestInfo;->-set6(Lmokee/weather/RequestInfo;I)I

    .line 174
    iget-boolean v1, p0, Lmokee/weather/RequestInfo$Builder;->mIsQueryOnly:Z

    invoke-static {v0, v1}, Lmokee/weather/RequestInfo;->-set1(Lmokee/weather/RequestInfo;Z)Z

    .line 175
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmokee/weather/RequestInfo;->-set2(Lmokee/weather/RequestInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    return-object v0
.end method

.method public queryOnly()Lmokee/weather/RequestInfo$Builder;
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lmokee/weather/RequestInfo$Builder;->mRequestType:I

    packed-switch v0, :pswitch_data_0

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmokee/weather/RequestInfo$Builder;->mIsQueryOnly:Z

    .line 159
    :goto_0
    return-object p0

    .line 153
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmokee/weather/RequestInfo$Builder;->mIsQueryOnly:Z

    goto :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setCityName(Ljava/lang/String;)Lmokee/weather/RequestInfo$Builder;
    .locals 2
    .param p1, "cityName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 81
    if-nez p1, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "City name can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    iput-object p1, p0, Lmokee/weather/RequestInfo$Builder;->mCityName:Ljava/lang/String;

    .line 85
    const/4 v0, 0x3

    iput v0, p0, Lmokee/weather/RequestInfo$Builder;->mRequestType:I

    .line 86
    iput-object v1, p0, Lmokee/weather/RequestInfo$Builder;->mLocation:Landroid/location/Location;

    .line 87
    iput-object v1, p0, Lmokee/weather/RequestInfo$Builder;->mWeatherLocation:Lmokee/weather/WeatherLocation;

    .line 88
    return-object p0
.end method

.method public setLocation(Landroid/location/Location;)Lmokee/weather/RequestInfo$Builder;
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v1, 0x0

    .line 98
    if-nez p1, :cond_0

    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Location can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lmokee/weather/RequestInfo$Builder;->mLocation:Landroid/location/Location;

    .line 102
    iput-object v1, p0, Lmokee/weather/RequestInfo$Builder;->mCityName:Ljava/lang/String;

    .line 103
    iput-object v1, p0, Lmokee/weather/RequestInfo$Builder;->mWeatherLocation:Lmokee/weather/WeatherLocation;

    .line 104
    const/4 v0, 0x1

    iput v0, p0, Lmokee/weather/RequestInfo$Builder;->mRequestType:I

    .line 105
    return-object p0
.end method

.method public setTemperatureUnit(I)Lmokee/weather/RequestInfo$Builder;
    .locals 2
    .param p1, "unit"    # I

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lmokee/weather/RequestInfo$Builder;->isValidTempUnit(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid temperature unit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    iput p1, p0, Lmokee/weather/RequestInfo$Builder;->mTempUnit:I

    .line 141
    return-object p0
.end method

.method public setWeatherLocation(Lmokee/weather/WeatherLocation;)Lmokee/weather/RequestInfo$Builder;
    .locals 2
    .param p1, "weatherLocation"    # Lmokee/weather/WeatherLocation;

    .prologue
    const/4 v0, 0x0

    .line 115
    if-nez p1, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "WeatherLocation can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    iput-object p1, p0, Lmokee/weather/RequestInfo$Builder;->mWeatherLocation:Lmokee/weather/WeatherLocation;

    .line 119
    iput-object v0, p0, Lmokee/weather/RequestInfo$Builder;->mLocation:Landroid/location/Location;

    .line 120
    iput-object v0, p0, Lmokee/weather/RequestInfo$Builder;->mCityName:Ljava/lang/String;

    .line 121
    const/4 v0, 0x2

    iput v0, p0, Lmokee/weather/RequestInfo$Builder;->mRequestType:I

    .line 122
    return-object p0
.end method
