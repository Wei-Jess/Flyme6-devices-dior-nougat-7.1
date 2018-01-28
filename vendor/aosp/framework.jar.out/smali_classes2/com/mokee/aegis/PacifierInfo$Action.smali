.class public Lcom/mokee/aegis/PacifierInfo$Action;
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
    name = "Action"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mokee/aegis/PacifierInfo$Action;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mokee/aegis/a;

    invoke-direct {v0}, Lcom/mokee/aegis/a;-><init>()V

    sput-object v0, Lcom/mokee/aegis/PacifierInfo$Action;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mokee/aegis/PacifierInfo$Action;->a:Ljava/lang/String;

    iput p2, p0, Lcom/mokee/aegis/PacifierInfo$Action;->b:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/mokee/aegis/PacifierInfo$Action;->b:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mokee/aegis/PacifierInfo$Action;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setMode(I)V
    .locals 0

    iput p1, p0, Lcom/mokee/aegis/PacifierInfo$Action;->b:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/mokee/aegis/PacifierInfo$Action;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/mokee/aegis/PacifierInfo$Action;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
