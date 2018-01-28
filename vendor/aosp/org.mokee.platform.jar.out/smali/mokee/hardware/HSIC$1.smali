.class final Lmokee/hardware/HSIC$1;
.super Ljava/lang/Object;
.source "HSIC.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/hardware/HSIC;
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
        "Lmokee/hardware/HSIC;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lmokee/hardware/HSIC$1;->createFromParcel(Landroid/os/Parcel;)Lmokee/hardware/HSIC;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmokee/hardware/HSIC;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 119
    const/4 v1, 0x5

    new-array v0, v1, [F

    .line 120
    .local v0, "fromParcel":[F
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readFloatArray([F)V

    .line 121
    invoke-static {v0}, Lmokee/hardware/HSIC;->fromFloatArray([F)Lmokee/hardware/HSIC;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lmokee/hardware/HSIC$1;->newArray(I)[Lmokee/hardware/HSIC;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lmokee/hardware/HSIC;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 126
    new-array v0, p1, [Lmokee/hardware/HSIC;

    return-object v0
.end method
