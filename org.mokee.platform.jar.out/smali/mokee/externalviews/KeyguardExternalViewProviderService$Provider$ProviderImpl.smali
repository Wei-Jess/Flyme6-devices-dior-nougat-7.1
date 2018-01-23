.class final Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;
.super Lmokee/externalviews/IKeyguardExternalViewProvider$Stub;
.source "KeyguardExternalViewProviderService.java"

# interfaces
.implements Landroid/view/Window$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/externalviews/KeyguardExternalViewProviderService$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderImpl"
.end annotation


# instance fields
.field private mAskedShow:Z

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lmokee/externalviews/IKeyguardExternalViewCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field private mShouldShow:Z

.field private final mWindow:Landroid/view/Window;

.field final synthetic this$1:Lmokee/externalviews/KeyguardExternalViewProviderService$Provider;


# direct methods
.method static synthetic -get0(Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic -get1(Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;)Landroid/view/Window;
    .locals 1

    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic -set0(Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mAskedShow:Z

    return p1
.end method

.method static synthetic -wrap0(Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;)V
    .locals 0

    invoke-direct {p0}, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->updateVisibility()V

    return-void
.end method

.method public constructor <init>(Lmokee/externalviews/KeyguardExternalViewProviderService$Provider;Lmokee/externalviews/KeyguardExternalViewProviderService$Provider;)V
    .locals 2
    .param p1, "this$1"    # Lmokee/externalviews/KeyguardExternalViewProviderService$Provider;
    .param p2, "provider"    # Lmokee/externalviews/KeyguardExternalViewProviderService$Provider;

    .prologue
    .line 147
    iput-object p1, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->this$1:Lmokee/externalviews/KeyguardExternalViewProviderService$Provider;

    invoke-direct {p0}, Lmokee/externalviews/IKeyguardExternalViewProvider$Stub;-><init>()V

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mShouldShow:Z

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mAskedShow:Z

    .line 145
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 144
    iput-object v0, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 148
    new-instance v0, Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, p1, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider;->this$0:Lmokee/externalviews/KeyguardExternalViewProviderService;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mWindow:Landroid/view/Window;

    .line 149
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 150
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider;->onCreateView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 152
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 153
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2}, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider;->getWindowType()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 154
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2}, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider;->getWindowFlags()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 155
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 156
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 147
    return-void
.end method

.method private updateVisibility()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-boolean v0, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mShouldShow:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mAskedShow:Z

    if-eqz v0, :cond_0

    .line 283
    const/4 v0, 0x0

    .line 282
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 280
    return-void

    .line 283
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public alterWindow(IIIIZLandroid/graphics/Rect;)V
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "visible"    # Z
    .param p6, "clipRect"    # Landroid/graphics/Rect;

    .prologue
    .line 245
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->this$1:Lmokee/externalviews/KeyguardExternalViewProviderService$Provider;

    iget-object v0, v0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider;->this$0:Lmokee/externalviews/KeyguardExternalViewProviderService;

    invoke-static {v0}, Lmokee/externalviews/KeyguardExternalViewProviderService;->-get1(Lmokee/externalviews/KeyguardExternalViewProviderService;)Landroid/os/Handler;

    move-result-object v8

    new-instance v0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$9;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$9;-><init>(Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;IIIIZLandroid/graphics/Rect;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 244
    return-void
.end method

.method protected final collapseNotificationPanel()V
    .locals 6

    .prologue
    .line 316
    iget-object v4, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 317
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 318
    iget-object v4, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lmokee/externalviews/IKeyguardExternalViewCallbacks;

    .line 320
    .local v1, "callback":Lmokee/externalviews/IKeyguardExternalViewCallbacks;
    :try_start_0
    invoke-interface {v1}, Lmokee/externalviews/IKeyguardExternalViewCallbacks;->collapseNotificationPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 321
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 324
    .end local v1    # "callback":Lmokee/externalviews/IKeyguardExternalViewCallbacks;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v4, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 315
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 374
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 354
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 359
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 379
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 364
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 369
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 469
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 466
    return-void
.end method

.method public onAttach(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->this$1:Lmokee/externalviews/KeyguardExternalViewProviderService$Provider;

    iget-object v0, v0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider;->this$0:Lmokee/externalviews/KeyguardExternalViewProviderService;

    invoke-static {v0}, Lmokee/externalviews/KeyguardExternalViewProviderService;->-get1(Lmokee/externalviews/KeyguardExternalViewProviderService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$1;

    invoke-direct {v1, p0}, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$1;-><init>(Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 160
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 6

    .prologue
    .line 418
    iget-object v4, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 419
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 420
    iget-object v4, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lmokee/externalviews/IKeyguardExternalViewCallbacks;

    .line 422
    .local v1, "callback":Lmokee/externalviews/IKeyguardExternalViewCallbacks;
    :try_start_0
    invoke-interface {v1}, Lmokee/externalviews/IKeyguardExternalViewCallbacks;->onAttachedToWindow()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 423
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 426
    .end local v1    # "callback":Lmokee/externalviews/IKeyguardExternalViewCallbacks;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v4, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 417
    return-void
.end method

.method public onBouncerShowing(Z)V
    .locals 2
    .param p1, "showing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->this$1:Lmokee/externalviews/KeyguardExternalViewProviderService$Provider;

    iget-object v0, v0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider;->this$0:Lmokee/externalviews/KeyguardExternalViewProviderService;

    invoke-static {v0}, Lmokee/externalviews/KeyguardExternalViewProviderService;->-get1(Lmokee/externalviews/KeyguardExternalViewProviderService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$5;

    invoke-direct {v1, p0, p1}, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$5;-><init>(Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 202
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 411
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 389
    const/4 v0, 0x0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 384
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDetach()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->this$1:Lmokee/externalviews/KeyguardExternalViewProviderService$Provider;

    iget-object v0, v0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider;->this$0:Lmokee/externalviews/KeyguardExternalViewProviderService;

    invoke-static {v0}, Lmokee/externalviews/KeyguardExternalViewProviderService;->-get1(Lmokee/externalviews/KeyguardExternalViewProviderService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$2;

    invoke-direct {v1, p0}, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$2;-><init>(Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 171
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 6

    .prologue
    .line 431
    iget-object v4, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 432
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 433
    iget-object v4, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lmokee/externalviews/IKeyguardExternalViewCallbacks;

    .line 435
    .local v1, "callback":Lmokee/externalviews/IKeyguardExternalViewCallbacks;
    :try_start_0
    invoke-interface {v1}, Lmokee/externalviews/IKeyguardExternalViewCallbacks;->onDetachedFromWindow()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 436
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 439
    .end local v1    # "callback":Lmokee/externalviews/IKeyguardExternalViewCallbacks;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v4, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 430
    return-void
.end method

.method public onKeyguardDismissed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->this$1:Lmokee/externalviews/KeyguardExternalViewProviderService$Provider;

    iget-object v0, v0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider;->this$0:Lmokee/externalviews/KeyguardExternalViewProviderService;

    invoke-static {v0}, Lmokee/externalviews/KeyguardExternalViewProviderService;->-get1(Lmokee/externalviews/KeyguardExternalViewProviderService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$4;

    invoke-direct {v1, p0}, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$4;-><init>(Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 192
    return-void
.end method

.method public onKeyguardShowing(Z)V
    .locals 2
    .param p1, "screenOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->this$1:Lmokee/externalviews/KeyguardExternalViewProviderService$Provider;

    iget-object v0, v0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider;->this$0:Lmokee/externalviews/KeyguardExternalViewProviderService;

    invoke-static {v0}, Lmokee/externalviews/KeyguardExternalViewProviderService;->-get1(Lmokee/externalviews/KeyguardExternalViewProviderService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$3;

    invoke-direct {v1, p0, p1}, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$3;-><init>(Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 182
    return-void
.end method

.method public onLockscreenSlideOffsetChanged(F)V
    .locals 2
    .param p1, "swipeProgress"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->this$1:Lmokee/externalviews/KeyguardExternalViewProviderService$Provider;

    iget-object v0, v0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider;->this$0:Lmokee/externalviews/KeyguardExternalViewProviderService;

    invoke-static {v0}, Lmokee/externalviews/KeyguardExternalViewProviderService;->-get1(Lmokee/externalviews/KeyguardExternalViewProviderService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$8;

    invoke-direct {v1, p0, p1}, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$8;-><init>(Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 233
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 404
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 399
    const/4 v0, 0x0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 443
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 394
    const/4 v0, 0x0

    return v0
.end method

.method public onScreenTurnedOff()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->this$1:Lmokee/externalviews/KeyguardExternalViewProviderService$Provider;

    iget-object v0, v0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider;->this$0:Lmokee/externalviews/KeyguardExternalViewProviderService;

    invoke-static {v0}, Lmokee/externalviews/KeyguardExternalViewProviderService;->-get1(Lmokee/externalviews/KeyguardExternalViewProviderService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$7;

    invoke-direct {v1, p0}, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$7;-><init>(Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 222
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->this$1:Lmokee/externalviews/KeyguardExternalViewProviderService$Provider;

    iget-object v0, v0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider;->this$0:Lmokee/externalviews/KeyguardExternalViewProviderService;

    invoke-static {v0}, Lmokee/externalviews/KeyguardExternalViewProviderService;->-get1(Lmokee/externalviews/KeyguardExternalViewProviderService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$6;

    invoke-direct {v1, p0}, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$6;-><init>(Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 212
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 447
    const/4 v0, 0x0

    return v0
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 1
    .param p1, "searchEvent"    # Landroid/view/SearchEvent;

    .prologue
    .line 452
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 408
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 414
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 457
    const/4 v0, 0x0

    return-object v0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .prologue
    .line 462
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerCallback(Lmokee/externalviews/IKeyguardExternalViewCallbacks;)V
    .locals 1
    .param p1, "callback"    # Lmokee/externalviews/IKeyguardExternalViewCallbacks;

    .prologue
    .line 272
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 271
    return-void
.end method

.method protected final requestDismiss()Z
    .locals 7

    .prologue
    .line 288
    const/4 v4, 0x1

    .line 289
    .local v4, "ret":Z
    iget-object v5, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 290
    .local v0, "N":I
    const/4 v3, 0x0

    .end local v4    # "ret":Z
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 291
    iget-object v5, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lmokee/externalviews/IKeyguardExternalViewCallbacks;

    .line 293
    .local v1, "callback":Lmokee/externalviews/IKeyguardExternalViewCallbacks;
    :try_start_0
    invoke-interface {v1}, Lmokee/externalviews/IKeyguardExternalViewCallbacks;->requestDismiss()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    and-int/2addr v4, v5

    .line 290
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 294
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 297
    .end local v1    # "callback":Lmokee/externalviews/IKeyguardExternalViewCallbacks;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v5, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 298
    return v4
.end method

.method protected final requestDismissAndStartActivity(Landroid/content/Intent;)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 302
    const/4 v4, 0x1

    .line 303
    .local v4, "ret":Z
    iget-object v5, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 304
    .local v0, "N":I
    const/4 v3, 0x0

    .end local v4    # "ret":Z
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 305
    iget-object v5, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lmokee/externalviews/IKeyguardExternalViewCallbacks;

    .line 307
    .local v1, "callback":Lmokee/externalviews/IKeyguardExternalViewCallbacks;
    :try_start_0
    invoke-interface {v1, p1}, Lmokee/externalviews/IKeyguardExternalViewCallbacks;->requestDismissAndStartActivity(Landroid/content/Intent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    and-int/2addr v4, v5

    .line 304
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 308
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 311
    .end local v1    # "callback":Lmokee/externalviews/IKeyguardExternalViewCallbacks;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v5, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 312
    return v4
.end method

.method protected final setInteractivity(Z)V
    .locals 6
    .param p1, "isInteractive"    # Z

    .prologue
    .line 328
    iget-object v4, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 329
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 330
    iget-object v4, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lmokee/externalviews/IKeyguardExternalViewCallbacks;

    .line 332
    .local v1, "callback":Lmokee/externalviews/IKeyguardExternalViewCallbacks;
    :try_start_0
    invoke-interface {v1, p1}, Lmokee/externalviews/IKeyguardExternalViewCallbacks;->setInteractivity(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 333
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 336
    .end local v1    # "callback":Lmokee/externalviews/IKeyguardExternalViewCallbacks;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v4, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 327
    return-void
.end method

.method public slideLockscreenIn()V
    .locals 6

    .prologue
    .line 340
    iget-object v4, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 341
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 342
    iget-object v4, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lmokee/externalviews/IKeyguardExternalViewCallbacks;

    .line 344
    .local v1, "callback":Lmokee/externalviews/IKeyguardExternalViewCallbacks;
    :try_start_0
    invoke-interface {v1}, Lmokee/externalviews/IKeyguardExternalViewCallbacks;->slideLockscreenIn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 345
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 348
    .end local v1    # "callback":Lmokee/externalviews/IKeyguardExternalViewCallbacks;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v4, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 339
    return-void
.end method

.method public unregisterCallback(Lmokee/externalviews/IKeyguardExternalViewCallbacks;)V
    .locals 1
    .param p1, "callback"    # Lmokee/externalviews/IKeyguardExternalViewCallbacks;

    .prologue
    .line 277
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 276
    return-void
.end method
