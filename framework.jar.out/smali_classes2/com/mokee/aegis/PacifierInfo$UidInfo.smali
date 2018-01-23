.class public Lcom/mokee/aegis/PacifierInfo$UidInfo;
.super Ljava/lang/Object;
.source "PacifierInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mokee/aegis/PacifierInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UidInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mokee/aegis/PacifierInfo$UidInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mokee/aegis/PacifierInfo$Action;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mokee/aegis/c;

    invoke-direct {v0}, Lcom/mokee/aegis/c;-><init>()V

    sput-object v0, Lcom/mokee/aegis/PacifierInfo$UidInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mokee/aegis/PacifierInfo$Action;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/mokee/aegis/PacifierInfo$UidInfo;->a:I

    iput p2, p0, Lcom/mokee/aegis/PacifierInfo$UidInfo;->b:I

    iput-object p3, p0, Lcom/mokee/aegis/PacifierInfo$UidInfo;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getActions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mokee/aegis/PacifierInfo$Action;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mokee/aegis/PacifierInfo$UidInfo;->c:Ljava/util/Map;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/mokee/aegis/PacifierInfo$UidInfo;->b:I

    return v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Lcom/mokee/aegis/PacifierInfo$UidInfo;->a:I

    return v0
.end method

.method public setMode(I)V
    .locals 0

    iput p1, p0, Lcom/mokee/aegis/PacifierInfo$UidInfo;->b:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/mokee/aegis/PacifierInfo$UidInfo;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/mokee/aegis/PacifierInfo$UidInfo;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/mokee/aegis/PacifierInfo$UidInfo;->c:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return-void
.end method
