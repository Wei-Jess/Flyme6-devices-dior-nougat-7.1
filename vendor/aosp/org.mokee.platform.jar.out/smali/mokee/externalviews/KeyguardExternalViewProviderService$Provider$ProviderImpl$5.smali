.class Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$5;
.super Ljava/lang/Object;
.source "KeyguardExternalViewProviderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->onBouncerShowing(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;

.field final synthetic val$showing:Z


# direct methods
.method constructor <init>(Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;Z)V
    .locals 0
    .param p1, "this$2"    # Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;
    .param p2, "val$showing"    # Z

    .prologue
    .line 203
    iput-object p1, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$5;->this$2:Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;

    iput-boolean p2, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$5;->val$showing:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$5;->this$2:Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;

    iget-object v0, v0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->this$1:Lmokee/externalviews/KeyguardExternalViewProviderService$Provider;

    iget-boolean v1, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$5;->val$showing:Z

    invoke-virtual {v0, v1}, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider;->onBouncerShowing(Z)V

    .line 205
    return-void
.end method
