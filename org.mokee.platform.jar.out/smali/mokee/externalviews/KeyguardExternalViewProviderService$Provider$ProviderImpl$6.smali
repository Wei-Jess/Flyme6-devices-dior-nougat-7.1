.class Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$6;
.super Ljava/lang/Object;
.source "KeyguardExternalViewProviderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->onScreenTurnedOn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;


# direct methods
.method constructor <init>(Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;)V
    .locals 0
    .param p1, "this$2"    # Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;

    .prologue
    .line 213
    iput-object p1, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$6;->this$2:Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$6;->this$2:Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;

    iget-object v0, v0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->this$1:Lmokee/externalviews/KeyguardExternalViewProviderService$Provider;

    invoke-virtual {v0}, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider;->onScreenTurnedOn()V

    .line 215
    return-void
.end method
