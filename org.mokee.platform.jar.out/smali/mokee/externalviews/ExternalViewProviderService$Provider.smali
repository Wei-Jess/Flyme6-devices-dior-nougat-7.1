.class public abstract Lmokee/externalviews/ExternalViewProviderService$Provider;
.super Ljava/lang/Object;
.source "ExternalViewProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/externalviews/ExternalViewProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "Provider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl;
    }
.end annotation


# static fields
.field public static final DEFAULT_WINDOW_FLAGS:I = 0x320

.field public static final DEFAULT_WINDOW_TYPE:I = 0x7d2


# instance fields
.field private final mImpl:Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl;

.field private final mOptions:Landroid/os/Bundle;

.field final synthetic this$0:Lmokee/externalviews/ExternalViewProviderService;


# direct methods
.method static synthetic -get0(Lmokee/externalviews/ExternalViewProviderService$Provider;)Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl;
    .locals 1

    iget-object v0, p0, Lmokee/externalviews/ExternalViewProviderService$Provider;->mImpl:Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl;

    return-object v0
.end method

.method protected constructor <init>(Lmokee/externalviews/ExternalViewProviderService;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "this$0"    # Lmokee/externalviews/ExternalViewProviderService;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 213
    iput-object p1, p0, Lmokee/externalviews/ExternalViewProviderService$Provider;->this$0:Lmokee/externalviews/ExternalViewProviderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    new-instance v0, Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl;

    invoke-direct {v0, p0, p0}, Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl;-><init>(Lmokee/externalviews/ExternalViewProviderService$Provider;Lmokee/externalviews/ExternalViewProviderService$Provider;)V

    iput-object v0, p0, Lmokee/externalviews/ExternalViewProviderService$Provider;->mImpl:Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl;

    .line 214
    iput-object p2, p0, Lmokee/externalviews/ExternalViewProviderService$Provider;->mOptions:Landroid/os/Bundle;

    .line 213
    return-void
.end method


# virtual methods
.method protected getOptions()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lmokee/externalviews/ExternalViewProviderService$Provider;->mOptions:Landroid/os/Bundle;

    return-object v0
.end method

.method getWindowFlags()I
    .locals 1

    .prologue
    .line 234
    const/16 v0, 0x320

    return v0
.end method

.method getWindowType()I
    .locals 1

    .prologue
    .line 230
    const/16 v0, 0x7d2

    return v0
.end method

.method protected onAttach()V
    .locals 0

    .prologue
    .line 221
    return-void
.end method

.method protected abstract onCreateView()Landroid/view/View;
.end method

.method protected onDetach()V
    .locals 0

    .prologue
    .line 227
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 225
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 224
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 223
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 226
    return-void
.end method
