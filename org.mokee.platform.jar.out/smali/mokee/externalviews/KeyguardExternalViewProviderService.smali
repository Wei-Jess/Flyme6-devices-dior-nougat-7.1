.class public abstract Lmokee/externalviews/KeyguardExternalViewProviderService;
.super Landroid/app/Service;
.source "KeyguardExternalViewProviderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmokee/externalviews/KeyguardExternalViewProviderService$Provider;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final META_DATA:Ljava/lang/String; = "mokee.externalviews.keyguard"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "mokee.externalviews.KeyguardExternalViewProviderService"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmokee/externalviews/KeyguardExternalViewProviderService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lmokee/externalviews/KeyguardExternalViewProviderService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalViewProviderService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lmokee/externalviews/KeyguardExternalViewProviderService;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalViewProviderService;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lmokee/externalviews/KeyguardExternalViewProviderService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmokee/externalviews/KeyguardExternalViewProviderService;->TAG:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmokee/externalviews/KeyguardExternalViewProviderService;->mHandler:Landroid/os/Handler;

    .line 62
    return-void
.end method


# virtual methods
.method protected abstract createExternalView(Landroid/os/Bundle;)Lmokee/externalviews/KeyguardExternalViewProviderService$Provider;
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 105
    new-instance v0, Lmokee/externalviews/KeyguardExternalViewProviderService$1;

    invoke-direct {v0, p0}, Lmokee/externalviews/KeyguardExternalViewProviderService$1;-><init>(Lmokee/externalviews/KeyguardExternalViewProviderService;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 94
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Lmokee/externalviews/KeyguardExternalViewProviderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lmokee/externalviews/KeyguardExternalViewProviderService;->mWindowManager:Landroid/view/WindowManager;

    .line 91
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 99
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 100
    const/4 v0, 0x2

    return v0
.end method
