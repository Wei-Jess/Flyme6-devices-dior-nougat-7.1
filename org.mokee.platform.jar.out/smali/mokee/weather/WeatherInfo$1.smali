.class final Lmokee/weather/WeatherInfo$1;
.super Ljava/lang/Object;
.source "WeatherInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/weather/WeatherInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lmokee/weather/WeatherInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 456
    invoke-virtual {p0, p1}, Lmokee/weather/WeatherInfo$1;->createFromParcel(Landroid/os/Parcel;)Lmokee/weather/WeatherInfo;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmokee/weather/WeatherInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 457
    new-instance v0, Lmokee/weather/WeatherInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmokee/weather/WeatherInfo;-><init>(Landroid/os/Parcel;Lmokee/weather/WeatherInfo;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 461
    invoke-virtual {p0, p1}, Lmokee/weather/WeatherInfo$1;->newArray(I)[Lmokee/weather/WeatherInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lmokee/weather/WeatherInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 462
    new-array v0, p1, [Lmokee/weather/WeatherInfo;

    return-object v0
.end method
