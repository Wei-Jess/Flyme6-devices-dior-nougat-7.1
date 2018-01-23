.class Lcom/mokee/aegis/e;
.super Ljava/lang/Object;
.source "e.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/mokee/aegis/WardenInfo$UidInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mokee/aegis/WardenInfo$UidInfo;
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-instance v2, Lcom/mokee/aegis/WardenInfo$UidInfo;

    invoke-direct {v2, v0, v1}, Lcom/mokee/aegis/WardenInfo$UidInfo;-><init>(II)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mokee/aegis/e;->createFromParcel(Landroid/os/Parcel;)Lcom/mokee/aegis/WardenInfo$UidInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mokee/aegis/WardenInfo$UidInfo;
    .locals 1

    new-array v0, p1, [Lcom/mokee/aegis/WardenInfo$UidInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mokee/aegis/e;->newArray(I)[Lcom/mokee/aegis/WardenInfo$UidInfo;

    move-result-object v0

    return-object v0
.end method
