.class public Lcom/mokee/aegis/PacifierInfo;
.super Ljava/lang/Object;
.source "PacifierInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mokee/aegis/PacifierInfo$Action;,
        Lcom/mokee/aegis/PacifierInfo$PacifierInfoCache;,
        Lcom/mokee/aegis/PacifierInfo$PackageInfo;,
        Lcom/mokee/aegis/PacifierInfo$UidInfo;
    }
.end annotation


# static fields
.field private static a:Lcom/mokee/aegis/PacifierUtils;

.field private static b:Lcom/mokee/aegis/PacifierInfo$PacifierInfoCache;

.field public static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/mokee/aegis/PacifierUtils;->getInstance()Lcom/mokee/aegis/PacifierUtils;

    move-result-object v0

    sput-object v0, Lcom/mokee/aegis/PacifierInfo;->a:Lcom/mokee/aegis/PacifierUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lcom/mokee/aegis/PacifierInfo$PacifierInfoCache;
    .locals 1

    sget-object v0, Lcom/mokee/aegis/PacifierInfo;->b:Lcom/mokee/aegis/PacifierInfo$PacifierInfoCache;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mokee/aegis/PacifierInfo$PacifierInfoCache;)V
    .locals 0

    sput-object p0, Lcom/mokee/aegis/PacifierInfo;->b:Lcom/mokee/aegis/PacifierInfo$PacifierInfoCache;

    return-void
.end method

.method static synthetic access$2()Lcom/mokee/aegis/PacifierUtils;
    .locals 1

    sget-object v0, Lcom/mokee/aegis/PacifierInfo;->a:Lcom/mokee/aegis/PacifierUtils;

    return-object v0
.end method
