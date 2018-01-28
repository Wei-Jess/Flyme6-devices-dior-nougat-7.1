.class Lmokee/externalviews/KeyguardExternalView$6;
.super Ljava/lang/Object;
.source "KeyguardExternalView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmokee/externalviews/KeyguardExternalView;->onKeyguardShowing(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmokee/externalviews/KeyguardExternalView;

.field final synthetic val$screenOn:Z


# direct methods
.method constructor <init>(Lmokee/externalviews/KeyguardExternalView;Z)V
    .locals 0
    .param p1, "this$0"    # Lmokee/externalviews/KeyguardExternalView;
    .param p2, "val$screenOn"    # Z

    .prologue
    .line 310
    iput-object p1, p0, Lmokee/externalviews/KeyguardExternalView$6;->this$0:Lmokee/externalviews/KeyguardExternalView;

    iput-boolean p2, p0, Lmokee/externalviews/KeyguardExternalView$6;->val$screenOn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 314
    :try_start_0
    iget-object v1, p0, Lmokee/externalviews/KeyguardExternalView$6;->this$0:Lmokee/externalviews/KeyguardExternalView;

    invoke-static {v1}, Lmokee/externalviews/KeyguardExternalView;->-get3(Lmokee/externalviews/KeyguardExternalView;)Lmokee/externalviews/IKeyguardExternalViewProvider;

    move-result-object v1

    iget-boolean v2, p0, Lmokee/externalviews/KeyguardExternalView$6;->val$screenOn:Z

    invoke-interface {v1, v2}, Lmokee/externalviews/IKeyguardExternalViewProvider;->onKeyguardShowing(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :goto_0
    return-void

    .line 315
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
