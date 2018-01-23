.class public final Lmokee/weather/WeatherInfo;
.super Ljava/lang/Object;
.source "WeatherInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmokee/weather/WeatherInfo$1;,
        Lmokee/weather/WeatherInfo$Builder;,
        Lmokee/weather/WeatherInfo$DayForecast;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmokee/weather/WeatherInfo;",
            ">;"
        }
    .end annotation
.end field


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

.field private mKey:Ljava/lang/String;

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
.method static synthetic -set0(Lmokee/weather/WeatherInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lmokee/weather/WeatherInfo;->mAqi:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lmokee/weather/WeatherInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lmokee/weather/WeatherInfo;->mCity:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set10(Lmokee/weather/WeatherInfo;D)D
    .locals 1

    iput-wide p1, p0, Lmokee/weather/WeatherInfo;->mTodaysLowTemp:D

    return-wide p1
.end method

.method static synthetic -set11(Lmokee/weather/WeatherInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lmokee/weather/WeatherInfo;->mUv:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set12(Lmokee/weather/WeatherInfo;D)D
    .locals 1

    iput-wide p1, p0, Lmokee/weather/WeatherInfo;->mWindDirection:D

    return-wide p1
.end method

.method static synthetic -set13(Lmokee/weather/WeatherInfo;D)D
    .locals 1

    iput-wide p1, p0, Lmokee/weather/WeatherInfo;->mWindSpeed:D

    return-wide p1
.end method

.method static synthetic -set14(Lmokee/weather/WeatherInfo;I)I
    .locals 0

    iput p1, p0, Lmokee/weather/WeatherInfo;->mWindSpeedUnit:I

    return p1
.end method

.method static synthetic -set2(Lmokee/weather/WeatherInfo;I)I
    .locals 0

    iput p1, p0, Lmokee/weather/WeatherInfo;->mConditionCode:I

    return p1
.end method

.method static synthetic -set3(Lmokee/weather/WeatherInfo;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lmokee/weather/WeatherInfo;->mForecastList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -set4(Lmokee/weather/WeatherInfo;D)D
    .locals 1

    iput-wide p1, p0, Lmokee/weather/WeatherInfo;->mHumidity:D

    return-wide p1
.end method

.method static synthetic -set5(Lmokee/weather/WeatherInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lmokee/weather/WeatherInfo;->mKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set6(Lmokee/weather/WeatherInfo;I)I
    .locals 0

    iput p1, p0, Lmokee/weather/WeatherInfo;->mTempUnit:I

    return p1
.end method

.method static synthetic -set7(Lmokee/weather/WeatherInfo;D)D
    .locals 1

    iput-wide p1, p0, Lmokee/weather/WeatherInfo;->mTemperature:D

    return-wide p1
.end method

.method static synthetic -set8(Lmokee/weather/WeatherInfo;J)J
    .locals 1

    iput-wide p1, p0, Lmokee/weather/WeatherInfo;->mTimestamp:J

    return-wide p1
.end method

.method static synthetic -set9(Lmokee/weather/WeatherInfo;D)D
    .locals 1

    iput-wide p1, p0, Lmokee/weather/WeatherInfo;->mTodaysHighTemp:D

    return-wide p1
.end method

.method static synthetic -wrap0(I)Z
    .locals 1
    .param p0, "code"    # I

    .prologue
    invoke-static {p0}, Lmokee/weather/WeatherInfo;->isValidWeatherCode(I)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 453
    new-instance v0, Lmokee/weather/WeatherInfo$1;

    invoke-direct {v0}, Lmokee/weather/WeatherInfo$1;-><init>()V

    .line 452
    sput-object v0, Lmokee/weather/WeatherInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 44
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    invoke-static {p1}, Lmokee/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lmokee/os/Concierge$ParcelInfo;

    move-result-object v1

    .line 389
    .local v1, "parcelInfo":Lmokee/os/Concierge$ParcelInfo;
    invoke-virtual {v1}, Lmokee/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v2

    .line 391
    .local v2, "parcelableVersion":I
    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmokee/weather/WeatherInfo;->mKey:Ljava/lang/String;

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmokee/weather/WeatherInfo;->mCity:Ljava/lang/String;

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lmokee/weather/WeatherInfo;->mConditionCode:I

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmokee/weather/WeatherInfo;->mAqi:Ljava/lang/String;

    .line 396
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmokee/weather/WeatherInfo;->mUv:Ljava/lang/String;

    .line 397
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lmokee/weather/WeatherInfo;->mTemperature:D

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lmokee/weather/WeatherInfo;->mTempUnit:I

    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lmokee/weather/WeatherInfo;->mHumidity:D

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lmokee/weather/WeatherInfo;->mWindSpeed:D

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lmokee/weather/WeatherInfo;->mWindDirection:D

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lmokee/weather/WeatherInfo;->mWindSpeedUnit:I

    .line 403
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lmokee/weather/WeatherInfo;->mTodaysHighTemp:D

    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lmokee/weather/WeatherInfo;->mTodaysLowTemp:D

    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lmokee/weather/WeatherInfo;->mTimestamp:J

    .line 406
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 407
    .local v0, "forecastListSize":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmokee/weather/WeatherInfo;->mForecastList:Ljava/util/List;

    .line 408
    :goto_0
    if-lez v0, :cond_0

    .line 409
    iget-object v4, p0, Lmokee/weather/WeatherInfo;->mForecastList:Ljava/util/List;

    sget-object v3, Lmokee/weather/WeatherInfo$DayForecast;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmokee/weather/WeatherInfo$DayForecast;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 415
    .end local v0    # "forecastListSize":I
    :cond_0
    invoke-virtual {v1}, Lmokee/os/Concierge$ParcelInfo;->complete()V

    .line 386
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmokee/weather/WeatherInfo;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lmokee/weather/WeatherInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Lmokee/weather/WeatherInfo;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lmokee/weather/WeatherInfo;-><init>()V

    return-void
.end method

.method private static isValidWeatherCode(I)Z
    .locals 2
    .param p0, "code"    # I

    .prologue
    const/4 v1, 0x0

    .line 277
    if-ltz p0, :cond_0

    .line 278
    const/16 v0, 0x32

    if-le p0, v0, :cond_1

    .line 279
    :cond_0
    const/16 v0, 0xc80

    if-eq p0, v0, :cond_1

    .line 280
    return v1

    .line 283
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 674
    if-nez p1, :cond_0

    return v3

    .line 676
    :cond_0
    invoke-virtual {p0}, Lmokee/weather/WeatherInfo;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_1

    move-object v0, p1

    .line 677
    check-cast v0, Lmokee/weather/WeatherInfo;

    .line 678
    .local v0, "info":Lmokee/weather/WeatherInfo;
    iget-object v1, p0, Lmokee/weather/WeatherInfo;->mKey:Ljava/lang/String;

    iget-object v2, v0, Lmokee/weather/WeatherInfo;->mKey:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1

    .line 680
    .end local v0    # "info":Lmokee/weather/WeatherInfo;
    :cond_1
    return v3
.end method

.method public getAqi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lmokee/weather/WeatherInfo;->mAqi:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lmokee/weather/WeatherInfo;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public getConditionCode()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lmokee/weather/WeatherInfo;->mConditionCode:I

    return v0
.end method

.method public getForecasts()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmokee/weather/WeatherInfo$DayForecast;",
            ">;"
        }
    .end annotation

    .prologue
    .line 383
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lmokee/weather/WeatherInfo;->mForecastList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getHumidity()D
    .locals 2

    .prologue
    .line 318
    iget-wide v0, p0, Lmokee/weather/WeatherInfo;->mHumidity:D

    return-wide v0
.end method

.method public getTemperature()D
    .locals 2

    .prologue
    .line 353
    iget-wide v0, p0, Lmokee/weather/WeatherInfo;->mTemperature:D

    return-wide v0
.end method

.method public getTemperatureUnit()I
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lmokee/weather/WeatherInfo;->mTempUnit:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 325
    iget-wide v0, p0, Lmokee/weather/WeatherInfo;->mTimestamp:J

    return-wide v0
.end method

.method public getTodaysHigh()D
    .locals 2

    .prologue
    .line 367
    iget-wide v0, p0, Lmokee/weather/WeatherInfo;->mTodaysHighTemp:D

    return-wide v0
.end method

.method public getTodaysLow()D
    .locals 2

    .prologue
    .line 374
    iget-wide v0, p0, Lmokee/weather/WeatherInfo;->mTodaysLowTemp:D

    return-wide v0
.end method

.method public getUv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lmokee/weather/WeatherInfo;->mUv:Ljava/lang/String;

    return-object v0
.end method

.method public getWindDirection()D
    .locals 2

    .prologue
    .line 332
    iget-wide v0, p0, Lmokee/weather/WeatherInfo;->mWindDirection:D

    return-wide v0
.end method

.method public getWindSpeed()D
    .locals 2

    .prologue
    .line 339
    iget-wide v0, p0, Lmokee/weather/WeatherInfo;->mWindSpeed:D

    return-wide v0
.end method

.method public getWindSpeedUnit()I
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Lmokee/weather/WeatherInfo;->mWindSpeedUnit:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 666
    const/16 v0, 0x1f

    .line 668
    .local v0, "prime":I
    iget-object v2, p0, Lmokee/weather/WeatherInfo;->mKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmokee/weather/WeatherInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 669
    .local v1, "result":I
    return v1

    .line 668
    .end local v1    # "result":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 644
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 645
    const-string/jumbo v4, " City Name: "

    .line 644
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 645
    iget-object v4, p0, Lmokee/weather/WeatherInfo;->mCity:Ljava/lang/String;

    .line 644
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 646
    const-string/jumbo v4, " Condition Code: "

    .line 644
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 646
    iget v4, p0, Lmokee/weather/WeatherInfo;->mConditionCode:I

    .line 644
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 647
    const-string/jumbo v4, " Aqi: "

    .line 644
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 647
    iget-object v4, p0, Lmokee/weather/WeatherInfo;->mAqi:Ljava/lang/String;

    .line 644
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 648
    const-string/jumbo v4, " Uv: "

    .line 644
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 648
    iget-object v4, p0, Lmokee/weather/WeatherInfo;->mUv:Ljava/lang/String;

    .line 644
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 649
    const-string/jumbo v4, " Temperature: "

    .line 644
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 649
    iget-wide v4, p0, Lmokee/weather/WeatherInfo;->mTemperature:D

    .line 644
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 650
    const-string/jumbo v4, " Temperature Unit: "

    .line 644
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 650
    iget v4, p0, Lmokee/weather/WeatherInfo;->mTempUnit:I

    .line 644
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 651
    const-string/jumbo v4, " Humidity: "

    .line 644
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 651
    iget-wide v4, p0, Lmokee/weather/WeatherInfo;->mHumidity:D

    .line 644
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 652
    const-string/jumbo v4, " Wind speed: "

    .line 644
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 652
    iget-wide v4, p0, Lmokee/weather/WeatherInfo;->mWindSpeed:D

    .line 644
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 653
    const-string/jumbo v4, " Wind direction: "

    .line 644
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 653
    iget-wide v4, p0, Lmokee/weather/WeatherInfo;->mWindDirection:D

    .line 644
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 654
    const-string/jumbo v4, " Wind Speed Unit: "

    .line 644
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 654
    iget v4, p0, Lmokee/weather/WeatherInfo;->mWindSpeedUnit:I

    .line 644
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 655
    const-string/jumbo v4, " Today\'s high temp: "

    .line 644
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 655
    iget-wide v4, p0, Lmokee/weather/WeatherInfo;->mTodaysHighTemp:D

    .line 644
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 656
    const-string/jumbo v4, " Today\'s low temp: "

    .line 644
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 656
    iget-wide v4, p0, Lmokee/weather/WeatherInfo;->mTodaysLowTemp:D

    .line 644
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 657
    const-string/jumbo v4, " Timestamp: "

    .line 644
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 657
    iget-wide v4, p0, Lmokee/weather/WeatherInfo;->mTimestamp:J

    .line 644
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 657
    const-string/jumbo v4, " Forecasts: ["

    .line 644
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 658
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lmokee/weather/WeatherInfo;->mForecastList:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "dayForecast$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmokee/weather/WeatherInfo$DayForecast;

    .line 659
    .local v1, "dayForecast":Lmokee/weather/WeatherInfo$DayForecast;
    invoke-virtual {v1}, Lmokee/weather/WeatherInfo$DayForecast;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 661
    .end local v1    # "dayForecast":Lmokee/weather/WeatherInfo$DayForecast;
    :cond_0
    const-string/jumbo v3, "]}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 426
    invoke-static {p1}, Lmokee/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lmokee/os/Concierge$ParcelInfo;

    move-result-object v2

    .line 429
    .local v2, "parcelInfo":Lmokee/os/Concierge$ParcelInfo;
    iget-object v3, p0, Lmokee/weather/WeatherInfo;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 430
    iget-object v3, p0, Lmokee/weather/WeatherInfo;->mCity:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 431
    iget v3, p0, Lmokee/weather/WeatherInfo;->mConditionCode:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 432
    iget-object v3, p0, Lmokee/weather/WeatherInfo;->mAqi:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 433
    iget-object v3, p0, Lmokee/weather/WeatherInfo;->mUv:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 434
    iget-wide v4, p0, Lmokee/weather/WeatherInfo;->mTemperature:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 435
    iget v3, p0, Lmokee/weather/WeatherInfo;->mTempUnit:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 436
    iget-wide v4, p0, Lmokee/weather/WeatherInfo;->mHumidity:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 437
    iget-wide v4, p0, Lmokee/weather/WeatherInfo;->mWindSpeed:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 438
    iget-wide v4, p0, Lmokee/weather/WeatherInfo;->mWindDirection:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 439
    iget v3, p0, Lmokee/weather/WeatherInfo;->mWindSpeedUnit:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 440
    iget-wide v4, p0, Lmokee/weather/WeatherInfo;->mTodaysHighTemp:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 441
    iget-wide v4, p0, Lmokee/weather/WeatherInfo;->mTodaysLowTemp:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 442
    iget-wide v4, p0, Lmokee/weather/WeatherInfo;->mTimestamp:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 443
    iget-object v3, p0, Lmokee/weather/WeatherInfo;->mForecastList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    iget-object v3, p0, Lmokee/weather/WeatherInfo;->mForecastList:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "dayForecast$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmokee/weather/WeatherInfo$DayForecast;

    .line 445
    .local v0, "dayForecast":Lmokee/weather/WeatherInfo$DayForecast;
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Lmokee/weather/WeatherInfo$DayForecast;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 449
    .end local v0    # "dayForecast":Lmokee/weather/WeatherInfo$DayForecast;
    :cond_0
    invoke-virtual {v2}, Lmokee/os/Concierge$ParcelInfo;->complete()V

    .line 424
    return-void
.end method
