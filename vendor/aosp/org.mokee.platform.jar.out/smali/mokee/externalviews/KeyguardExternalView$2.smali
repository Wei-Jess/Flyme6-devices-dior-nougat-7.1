.class Lmokee/externalviews/KeyguardExternalView$2;
.super Lmokee/externalviews/IKeyguardExternalViewCallbacks$Stub;
.source "KeyguardExternalView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/externalviews/KeyguardExternalView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmokee/externalviews/KeyguardExternalView;


# direct methods
.method constructor <init>(Lmokee/externalviews/KeyguardExternalView;)V
    .locals 0
    .param p1, "this$0"    # Lmokee/externalviews/KeyguardExternalView;

    .prologue
    .line 158
    iput-object p1, p0, Lmokee/externalviews/KeyguardExternalView$2;->this$0:Lmokee/externalviews/KeyguardExternalView;

    invoke-direct {p0}, Lmokee/externalviews/IKeyguardExternalViewCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public collapseNotificationPanel()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 178
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalView$2;->this$0:Lmokee/externalviews/KeyguardExternalView;

    invoke-static {v0}, Lmokee/externalviews/KeyguardExternalView;->-get7(Lmokee/externalviews/KeyguardExternalView;)Lmokee/externalviews/KeyguardExternalView$OnWindowAttachmentChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalView$2;->this$0:Lmokee/externalviews/KeyguardExternalView;

    invoke-static {v0}, Lmokee/externalviews/KeyguardExternalView;->-get7(Lmokee/externalviews/KeyguardExternalView;)Lmokee/externalviews/KeyguardExternalView$OnWindowAttachmentChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lmokee/externalviews/KeyguardExternalView$OnWindowAttachmentChangedListener;->onAttachedToWindow()V

    .line 188
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalView$2;->this$0:Lmokee/externalviews/KeyguardExternalView;

    invoke-static {v0}, Lmokee/externalviews/KeyguardExternalView;->-get7(Lmokee/externalviews/KeyguardExternalView;)Lmokee/externalviews/KeyguardExternalView$OnWindowAttachmentChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalView$2;->this$0:Lmokee/externalviews/KeyguardExternalView;

    invoke-static {v0}, Lmokee/externalviews/KeyguardExternalView;->-get7(Lmokee/externalviews/KeyguardExternalView;)Lmokee/externalviews/KeyguardExternalView$OnWindowAttachmentChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lmokee/externalviews/KeyguardExternalView$OnWindowAttachmentChangedListener;->onDetachedFromWindow()V

    .line 195
    :cond_0
    return-void
.end method

.method public requestDismiss()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalView$2;->this$0:Lmokee/externalviews/KeyguardExternalView;

    invoke-static {v0}, Lmokee/externalviews/KeyguardExternalView;->-get1(Lmokee/externalviews/KeyguardExternalView;)Lmokee/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalView$2;->this$0:Lmokee/externalviews/KeyguardExternalView;

    invoke-static {v0}, Lmokee/externalviews/KeyguardExternalView;->-get1(Lmokee/externalviews/KeyguardExternalView;)Lmokee/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lmokee/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;->requestDismiss()Z

    move-result v0

    return v0

    .line 165
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public requestDismissAndStartActivity(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalView$2;->this$0:Lmokee/externalviews/KeyguardExternalView;

    invoke-static {v0}, Lmokee/externalviews/KeyguardExternalView;->-get1(Lmokee/externalviews/KeyguardExternalView;)Lmokee/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalView$2;->this$0:Lmokee/externalviews/KeyguardExternalView;

    invoke-static {v0}, Lmokee/externalviews/KeyguardExternalView;->-get1(Lmokee/externalviews/KeyguardExternalView;)Lmokee/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;

    move-result-object v0

    invoke-interface {v0, p1}, Lmokee/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;->requestDismissAndStartActivity(Landroid/content/Intent;)Z

    move-result v0

    return v0

    .line 174
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setInteractivity(Z)V
    .locals 1
    .param p1, "isInteractive"    # Z

    .prologue
    .line 184
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalView$2;->this$0:Lmokee/externalviews/KeyguardExternalView;

    invoke-static {v0, p1}, Lmokee/externalviews/KeyguardExternalView;->-set1(Lmokee/externalviews/KeyguardExternalView;Z)Z

    .line 183
    return-void
.end method

.method public slideLockscreenIn()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalView$2;->this$0:Lmokee/externalviews/KeyguardExternalView;

    invoke-static {v0}, Lmokee/externalviews/KeyguardExternalView;->-get1(Lmokee/externalviews/KeyguardExternalView;)Lmokee/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalView$2;->this$0:Lmokee/externalviews/KeyguardExternalView;

    invoke-static {v0}, Lmokee/externalviews/KeyguardExternalView;->-get1(Lmokee/externalviews/KeyguardExternalView;)Lmokee/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lmokee/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;->slideLockscreenIn()V

    .line 202
    :cond_0
    return-void
.end method
