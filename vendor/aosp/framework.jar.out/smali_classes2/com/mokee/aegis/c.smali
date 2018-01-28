.class Lcom/mokee/aegis/c;
.super Ljava/lang/Object;
.source "c.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/mokee/aegis/PacifierInfo$UidInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mokee/aegis/PacifierInfo$UidInfo;
    .locals 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const-class v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Lcom/mokee/aegis/PacifierInfo$UidInfo;

    invoke-direct {v3, v0, v1, v2}, Lcom/mokee/aegis/PacifierInfo$UidInfo;-><init>(IILjava/util/Map;)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mokee/aegis/c;->createFromParcel(Landroid/os/Parcel;)Lcom/mokee/aegis/PacifierInfo$UidInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mokee/aegis/PacifierInfo$UidInfo;
    .locals 1

    new-array v0, p1, [Lcom/mokee/aegis/PacifierInfo$UidInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mokee/aegis/c;->newArray(I)[Lcom/mokee/aegis/PacifierInfo$UidInfo;

    move-result-object v0

    return-object v0
.end method
