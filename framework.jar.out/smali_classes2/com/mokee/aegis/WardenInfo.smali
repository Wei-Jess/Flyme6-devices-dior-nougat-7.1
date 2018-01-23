.class public Lcom/mokee/aegis/WardenInfo;
.super Ljava/lang/Object;
.source "WardenInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mokee/aegis/WardenInfo$PackageInfo;,
        Lcom/mokee/aegis/WardenInfo$UidInfo;,
        Lcom/mokee/aegis/WardenInfo$WardenInfoCache;
    }
.end annotation


# static fields
.field private static a:Lcom/mokee/aegis/WardenUtils;

.field private static b:Lcom/mokee/aegis/WardenInfo$WardenInfoCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/mokee/aegis/WardenUtils;->getInstance()Lcom/mokee/aegis/WardenUtils;

    move-result-object v0

    sput-object v0, Lcom/mokee/aegis/WardenInfo;->a:Lcom/mokee/aegis/WardenUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lcom/mokee/aegis/WardenInfo$WardenInfoCache;
    .locals 1

    sget-object v0, Lcom/mokee/aegis/WardenInfo;->b:Lcom/mokee/aegis/WardenInfo$WardenInfoCache;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mokee/aegis/WardenInfo$WardenInfoCache;)V
    .locals 0

    sput-object p0, Lcom/mokee/aegis/WardenInfo;->b:Lcom/mokee/aegis/WardenInfo$WardenInfoCache;

    return-void
.end method

.method static synthetic access$2()Lcom/mokee/aegis/WardenUtils;
    .locals 1

    sget-object v0, Lcom/mokee/aegis/WardenInfo;->a:Lcom/mokee/aegis/WardenUtils;

    return-object v0
.end method
