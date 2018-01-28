.class public final Lmokee/weather/RequestInfo;
.super Ljava/lang/Object;
.source "RequestInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmokee/weather/RequestInfo$1;,
        Lmokee/weather/RequestInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmokee/weather/RequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_LOOKUP_CITY_NAME_REQ:I = 0x3

.field public static final TYPE_WEATHER_BY_GEO_LOCATION_REQ:I = 0x1

.field public static final TYPE_WEATHER_BY_WEATHER_LOCATION_REQ:I = 0x2


# instance fields
.field private mCityName:Ljava/lang/String;

.field private mIsQueryOnly:Z

.field private mKey:Ljava/lang/String;

.field private mListener:Lmokee/weather/IRequestInfoListener;

.field private mLocation:Landroid/location/Location;

.field private mRequestType:I

.field private mTempUnit:I

.field private mWeatherLocation:Lmokee/weather/WeatherLocation;


# direct methods
.method static synthetic -set0(Lmokee/weather/RequestInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lmokee/weather/RequestInfo;->mCityName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lmokee/weather/RequestInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmokee/weather/RequestInfo;->mIsQueryOnly:Z

    return p1
.end method

.method static synthetic -set2(Lmokee/weather/RequestInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lmokee/weather/RequestInfo;->mKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Lmokee/weather/RequestInfo;Lmokee/weather/IRequestInfoListener;)Lmokee/weather/IRequestInfoListener;
    .locals 0

    iput-object p1, p0, Lmokee/weather/RequestInfo;->mListener:Lmokee/weather/IRequestInfoListener;

    return-object p1
.end method

.method static synthetic -set4(Lmokee/weather/RequestInfo;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    iput-object p1, p0, Lmokee/weather/RequestInfo;->mLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic -set5(Lmokee/weather/RequestInfo;I)I
    .locals 0

    iput p1, p0, Lmokee/weather/RequestInfo;->mRequestType:I

    return p1
.end method

.method static synthetic -set6(Lmokee/weather/RequestInfo;I)I
    .locals 0

    iput p1, p0, Lmokee/weather/RequestInfo;->mTempUnit:I

    return p1
.end method

.method static synthetic -set7(Lmokee/weather/RequestInfo;Lmokee/weather/WeatherLocation;)Lmokee/weather/WeatherLocation;
    .locals 0

    iput-object p1, p0, Lmokee/weather/RequestInfo;->mWeatherLocation:Lmokee/weather/WeatherLocation;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 286
    new-instance v0, Lmokee/weather/RequestInfo$1;

    invoke-direct {v0}, Lmokee/weather/RequestInfo$1;-><init>()V

    sput-object v0, Lmokee/weather/RequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 35
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x1

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    invoke-static {p1}, Lmokee/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lmokee/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 194
    .local v0, "parcelInfo":Lmokee/os/Concierge$ParcelInfo;
    invoke-virtual {v0}, Lmokee/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v1

    .line 196
    .local v1, "parcelableVersion":I
    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmokee/weather/RequestInfo;->mKey:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lmokee/weather/RequestInfo;->mRequestType:I

    .line 199
    iget v2, p0, Lmokee/weather/RequestInfo;->mRequestType:I

    packed-switch v2, :pswitch_data_0

    .line 212
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_1

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lmokee/weather/RequestInfo;->mIsQueryOnly:Z

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lmokee/weather/IRequestInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lmokee/weather/IRequestInfoListener;

    move-result-object v2

    iput-object v2, p0, Lmokee/weather/RequestInfo;->mListener:Lmokee/weather/IRequestInfoListener;

    .line 217
    :cond_0
    invoke-virtual {v0}, Lmokee/os/Concierge$ParcelInfo;->complete()V

    .line 191
    return-void

    .line 201
    :pswitch_0
    sget-object v2, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    iput-object v2, p0, Lmokee/weather/RequestInfo;->mLocation:Landroid/location/Location;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lmokee/weather/RequestInfo;->mTempUnit:I

    goto :goto_0

    .line 205
    :pswitch_1
    sget-object v2, Lmokee/weather/WeatherLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmokee/weather/WeatherLocation;

    iput-object v2, p0, Lmokee/weather/RequestInfo;->mWeatherLocation:Lmokee/weather/WeatherLocation;

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lmokee/weather/RequestInfo;->mTempUnit:I

    goto :goto_0

    .line 209
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmokee/weather/RequestInfo;->mCityName:Ljava/lang/String;

    goto :goto_0

    .line 212
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmokee/weather/RequestInfo;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lmokee/weather/RequestInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Lmokee/weather/RequestInfo;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lmokee/weather/RequestInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 371
    if-nez p1, :cond_0

    return v3

    .line 373
    :cond_0
    invoke-virtual {p0}, Lmokee/weather/RequestInfo;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_1

    move-object v0, p1

    .line 374
    check-cast v0, Lmokee/weather/RequestInfo;

    .line 375
    .local v0, "info":Lmokee/weather/RequestInfo;
    iget-object v1, p0, Lmokee/weather/RequestInfo;->mKey:Ljava/lang/String;

    iget-object v2, v0, Lmokee/weather/RequestInfo;->mKey:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1

    .line 377
    .end local v0    # "info":Lmokee/weather/RequestInfo;
    :cond_1
    return v3
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lmokee/weather/RequestInfo;->mCityName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 2

    .prologue
    .line 233
    new-instance v0, Landroid/location/Location;

    iget-object v1, p0, Lmokee/weather/RequestInfo;->mLocation:Landroid/location/Location;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    return-object v0
.end method

.method public getRequestListener()Lmokee/weather/IRequestInfoListener;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lmokee/weather/RequestInfo;->mListener:Lmokee/weather/IRequestInfoListener;

    return-object v0
.end method

.method public getRequestType()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lmokee/weather/RequestInfo;->mRequestType:I

    return v0
.end method

.method public getTemperatureUnit()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lmokee/weather/RequestInfo;->mRequestType:I

    packed-switch v0, :pswitch_data_0

    .line 267
    const/4 v0, -0x1

    return v0

    .line 265
    :pswitch_0
    iget v0, p0, Lmokee/weather/RequestInfo;->mTempUnit:I

    return v0

    .line 262
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getWeatherLocation()Lmokee/weather/WeatherLocation;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lmokee/weather/RequestInfo;->mWeatherLocation:Lmokee/weather/WeatherLocation;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 363
    const/16 v0, 0x1f

    .line 365
    .local v0, "prime":I
    iget-object v2, p0, Lmokee/weather/RequestInfo;->mKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmokee/weather/RequestInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 366
    .local v1, "result":I
    return v1

    .line 365
    .end local v1    # "result":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isQueryOnlyWeatherRequest()Z
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lmokee/weather/RequestInfo;->mRequestType:I

    packed-switch v0, :pswitch_data_0

    .line 282
    const/4 v0, 0x0

    return v0

    .line 280
    :pswitch_0
    iget-boolean v0, p0, Lmokee/weather/RequestInfo;->mIsQueryOnly:Z

    return v0

    .line 277
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{ Request for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    iget v1, p0, Lmokee/weather/RequestInfo;->mRequestType:I

    packed-switch v1, :pswitch_data_0

    .line 358
    :goto_0
    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 337
    :pswitch_0
    const-string/jumbo v1, "Location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmokee/weather/RequestInfo;->mLocation:Landroid/location/Location;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 338
    const-string/jumbo v1, " Temp Unit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    iget v1, p0, Lmokee/weather/RequestInfo;->mTempUnit:I

    if-ne v1, v3, :cond_0

    .line 340
    const-string/jumbo v1, "Fahrenheit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 342
    :cond_0
    const-string/jumbo v1, " Celsius"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 346
    :pswitch_1
    const-string/jumbo v1, "WeatherLocation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmokee/weather/RequestInfo;->mWeatherLocation:Lmokee/weather/WeatherLocation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 347
    const-string/jumbo v1, " Temp Unit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    iget v1, p0, Lmokee/weather/RequestInfo;->mTempUnit:I

    if-ne v1, v3, :cond_1

    .line 349
    const-string/jumbo v1, "Fahrenheit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 351
    :cond_1
    const-string/jumbo v1, " Celsius"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 355
    :pswitch_2
    const-string/jumbo v1, "Lookup City: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmokee/weather/RequestInfo;->mCityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 335
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 306
    invoke-static {p1}, Lmokee/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lmokee/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 309
    .local v0, "parcelInfo":Lmokee/os/Concierge$ParcelInfo;
    iget-object v2, p0, Lmokee/weather/RequestInfo;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    iget v2, p0, Lmokee/weather/RequestInfo;->mRequestType:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    iget v2, p0, Lmokee/weather/RequestInfo;->mRequestType:I

    packed-switch v2, :pswitch_data_0

    .line 324
    :goto_0
    iget-boolean v2, p0, Lmokee/weather/RequestInfo;->mIsQueryOnly:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    iget-object v1, p0, Lmokee/weather/RequestInfo;->mListener:Lmokee/weather/IRequestInfoListener;

    invoke-interface {v1}, Lmokee/weather/IRequestInfoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 328
    invoke-virtual {v0}, Lmokee/os/Concierge$ParcelInfo;->complete()V

    .line 304
    return-void

    .line 313
    :pswitch_0
    iget-object v2, p0, Lmokee/weather/RequestInfo;->mLocation:Landroid/location/Location;

    invoke-virtual {v2, p1, v1}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    .line 314
    iget v2, p0, Lmokee/weather/RequestInfo;->mTempUnit:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 317
    :pswitch_1
    iget-object v2, p0, Lmokee/weather/RequestInfo;->mWeatherLocation:Lmokee/weather/WeatherLocation;

    invoke-virtual {v2, p1, v1}, Lmokee/weather/WeatherLocation;->writeToParcel(Landroid/os/Parcel;I)V

    .line 318
    iget v2, p0, Lmokee/weather/RequestInfo;->mTempUnit:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 321
    :pswitch_2
    iget-object v2, p0, Lmokee/weather/RequestInfo;->mCityName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 311
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
