.class Lcom/mokee/aegis/a;
.super Ljava/lang/Object;
.source "a.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/mokee/aegis/PacifierInfo$Action;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mokee/aegis/PacifierInfo$Action;
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-instance v2, Lcom/mokee/aegis/PacifierInfo$Action;

    invoke-direct {v2, v0, v1}, Lcom/mokee/aegis/PacifierInfo$Action;-><init>(Ljava/lang/String;I)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mokee/aegis/a;->createFromParcel(Landroid/os/Parcel;)Lcom/mokee/aegis/PacifierInfo$Action;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mokee/aegis/PacifierInfo$Action;
    .locals 1

    new-array v0, p1, [Lcom/mokee/aegis/PacifierInfo$Action;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mokee/aegis/a;->newArray(I)[Lcom/mokee/aegis/PacifierInfo$Action;

    move-result-object v0

    return-object v0
.end method
