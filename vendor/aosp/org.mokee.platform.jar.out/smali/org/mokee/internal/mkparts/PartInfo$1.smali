.class final Lorg/mokee/internal/mkparts/PartInfo$1;
.super Ljava/lang/Object;
.source "PartInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mokee/internal/mkparts/PartInfo;
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
        "Lorg/mokee/internal/mkparts/PartInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 190
    invoke-virtual {p0, p1}, Lorg/mokee/internal/mkparts/PartInfo$1;->createFromParcel(Landroid/os/Parcel;)Lorg/mokee/internal/mkparts/PartInfo;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/mokee/internal/mkparts/PartInfo;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 191
    new-instance v0, Lorg/mokee/internal/mkparts/PartInfo;

    invoke-direct {v0, p1}, Lorg/mokee/internal/mkparts/PartInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 195
    invoke-virtual {p0, p1}, Lorg/mokee/internal/mkparts/PartInfo$1;->newArray(I)[Lorg/mokee/internal/mkparts/PartInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lorg/mokee/internal/mkparts/PartInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 196
    new-array v0, p1, [Lorg/mokee/internal/mkparts/PartInfo;

    return-object v0
.end method
