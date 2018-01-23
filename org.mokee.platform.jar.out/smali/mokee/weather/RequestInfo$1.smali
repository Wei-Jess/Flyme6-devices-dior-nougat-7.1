.class final Lmokee/weather/RequestInfo$1;
.super Ljava/lang/Object;
.source "RequestInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/weather/RequestInfo;
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
        "Lmokee/weather/RequestInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 288
    invoke-virtual {p0, p1}, Lmokee/weather/RequestInfo$1;->createFromParcel(Landroid/os/Parcel;)Lmokee/weather/RequestInfo;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmokee/weather/RequestInfo;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 289
    new-instance v0, Lmokee/weather/RequestInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmokee/weather/RequestInfo;-><init>(Landroid/os/Parcel;Lmokee/weather/RequestInfo;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 293
    invoke-virtual {p0, p1}, Lmokee/weather/RequestInfo$1;->newArray(I)[Lmokee/weather/RequestInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lmokee/weather/RequestInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 294
    new-array v0, p1, [Lmokee/weather/RequestInfo;

    return-object v0
.end method
