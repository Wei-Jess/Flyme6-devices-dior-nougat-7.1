.class Lcom/mokee/aegis/b;
.super Ljava/lang/Object;
.source "b.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/mokee/aegis/PacifierInfo$PackageInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mokee/aegis/PacifierInfo$PackageInfo;
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    move-result-object v1

    new-instance v2, Lcom/mokee/aegis/PacifierInfo$PackageInfo;

    invoke-direct {v2, v0, v1}, Lcom/mokee/aegis/PacifierInfo$PackageInfo;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mokee/aegis/b;->createFromParcel(Landroid/os/Parcel;)Lcom/mokee/aegis/PacifierInfo$PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mokee/aegis/PacifierInfo$PackageInfo;
    .locals 1

    new-array v0, p1, [Lcom/mokee/aegis/PacifierInfo$PackageInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mokee/aegis/b;->newArray(I)[Lcom/mokee/aegis/PacifierInfo$PackageInfo;

    move-result-object v0

    return-object v0
.end method
