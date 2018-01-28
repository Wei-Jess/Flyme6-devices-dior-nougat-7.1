.class public Lmokee/externalviews/KeyguardExternalView;
.super Landroid/view/View;
.source "KeyguardExternalView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmokee/externalviews/KeyguardExternalView$1;,
        Lmokee/externalviews/KeyguardExternalView$2;,
        Lmokee/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;,
        Lmokee/externalviews/KeyguardExternalView$OnWindowAttachmentChangedListener;
    }
.end annotation


# static fields
.field public static final CATEGORY_KEYGUARD_GRANT_PERMISSION:Ljava/lang/String; = "org.mokee.intent.category.KEYGUARD_GRANT_PERMISSION"

.field public static final EXTRA_PERMISSION_LIST:Ljava/lang/String; = "permissions_list"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallback:Lmokee/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;

.field private mContext:Landroid/content/Context;

.field private final mDisplaySize:Landroid/graphics/Point;

.field private final mExternalViewProperties:Lmokee/externalviews/ExternalViewProperties;

.field private volatile mExternalViewProvider:Lmokee/externalviews/IKeyguardExternalViewProvider;

.field private mIsInteractive:Z

.field private final mKeyguardExternalViewCallbacks:Lmokee/externalviews/IKeyguardExternalViewCallbacks;

.field private mQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/os/IBinder;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mWindowAttachmentListener:Lmokee/externalviews/KeyguardExternalView$OnWindowAttachmentChangedListener;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmokee/externalviews/KeyguardExternalView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lmokee/externalviews/KeyguardExternalView;)Lmokee/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;
    .locals 1

    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalView;->mCallback:Lmokee/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;

    return-object v0
.end method

.method static synthetic -get2(Lmokee/externalviews/KeyguardExternalView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lmokee/externalviews/KeyguardExternalView;)Lmokee/externalviews/IKeyguardExternalViewProvider;
    .locals 1

    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalView;->mExternalViewProvider:Lmokee/externalviews/IKeyguardExternalViewProvider;

    return-object v0
.end method

.method static synthetic -get4(Lmokee/externalviews/KeyguardExternalView;)Lmokee/externalviews/IKeyguardExternalViewCallbacks;
    .locals 1

    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalView;->mKeyguardExternalViewCallbacks:Lmokee/externalviews/IKeyguardExternalViewCallbacks;

    return-object v0
.end method

.method static synthetic -get5(Lmokee/externalviews/KeyguardExternalView;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalView;->mService:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic -get6(Lmokee/externalviews/KeyguardExternalView;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalView;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic -get7(Lmokee/externalviews/KeyguardExternalView;)Lmokee/externalviews/KeyguardExternalView$OnWindowAttachmentChangedListener;
    .locals 1

    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalView;->mWindowAttachmentListener:Lmokee/externalviews/KeyguardExternalView$OnWindowAttachmentChangedListener;

    return-object v0
.end method

.method static synthetic -set0(Lmokee/externalviews/KeyguardExternalView;Lmokee/externalviews/IKeyguardExternalViewProvider;)Lmokee/externalviews/IKeyguardExternalViewProvider;
    .locals 0

    iput-object p1, p0, Lmokee/externalviews/KeyguardExternalView;->mExternalViewProvider:Lmokee/externalviews/IKeyguardExternalViewProvider;

    return-object p1
.end method

.method static synthetic -set1(Lmokee/externalviews/KeyguardExternalView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmokee/externalviews/KeyguardExternalView;->mIsInteractive:Z

    return p1
.end method

.method static synthetic -set2(Lmokee/externalviews/KeyguardExternalView;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    iput-object p1, p0, Lmokee/externalviews/KeyguardExternalView;->mService:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic -wrap0(Lmokee/externalviews/KeyguardExternalView;)V
    .locals 0

    invoke-direct {p0}, Lmokee/externalviews/KeyguardExternalView;->executeQueue()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lmokee/externalviews/KeyguardExternalView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmokee/externalviews/KeyguardExternalView;->TAG:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmokee/externalviews/KeyguardExternalView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/ComponentName;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lmokee/externalviews/KeyguardExternalView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lmokee/externalviews/KeyguardExternalView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .param p3, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lmokee/externalviews/KeyguardExternalView;->mQueue:Ljava/util/LinkedList;

    .line 111
    new-instance v1, Lmokee/externalviews/KeyguardExternalView$1;

    invoke-direct {v1, p0}, Lmokee/externalviews/KeyguardExternalView$1;-><init>(Lmokee/externalviews/KeyguardExternalView;)V

    iput-object v1, p0, Lmokee/externalviews/KeyguardExternalView;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 158
    new-instance v1, Lmokee/externalviews/KeyguardExternalView$2;

    invoke-direct {v1, p0}, Lmokee/externalviews/KeyguardExternalView$2;-><init>(Lmokee/externalviews/KeyguardExternalView;)V

    .line 157
    iput-object v1, p0, Lmokee/externalviews/KeyguardExternalView;->mKeyguardExternalViewCallbacks:Lmokee/externalviews/IKeyguardExternalViewCallbacks;

    .line 100
    invoke-virtual {p0}, Lmokee/externalviews/KeyguardExternalView;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lmokee/externalviews/KeyguardExternalView;->mContext:Landroid/content/Context;

    .line 101
    new-instance v1, Lmokee/externalviews/ExternalViewProperties;

    iget-object v2, p0, Lmokee/externalviews/KeyguardExternalView;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lmokee/externalviews/ExternalViewProperties;-><init>(Landroid/view/View;Landroid/content/Context;)V

    iput-object v1, p0, Lmokee/externalviews/KeyguardExternalView;->mExternalViewProperties:Lmokee/externalviews/ExternalViewProperties;

    .line 102
    if-eqz p3, :cond_0

    .line 103
    iget-object v1, p0, Lmokee/externalviews/KeyguardExternalView;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 104
    iget-object v3, p0, Lmokee/externalviews/KeyguardExternalView;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    .line 103
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 106
    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lmokee/externalviews/KeyguardExternalView;->mDisplaySize:Landroid/graphics/Point;

    .line 107
    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 108
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lmokee/externalviews/KeyguardExternalView;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 98
    return-void
.end method

.method private executeQueue()V
    .locals 2

    .prologue
    .line 210
    :goto_0
    iget-object v1, p0, Lmokee/externalviews/KeyguardExternalView;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    iget-object v1, p0, Lmokee/externalviews/KeyguardExternalView;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 212
    .local v0, "r":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 209
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalView;->mCallback:Lmokee/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalView;->mCallback:Lmokee/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;

    invoke-interface {v0}, Lmokee/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;->providerDied()V

    .line 281
    :cond_0
    return-void
.end method

.method public isInteractive()Z
    .locals 1

    .prologue
    .line 417
    iget-boolean v0, p0, Lmokee/externalviews/KeyguardExternalView;->mIsInteractive:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 269
    new-instance v0, Lmokee/externalviews/KeyguardExternalView$5;

    invoke-direct {v0, p0}, Lmokee/externalviews/KeyguardExternalView$5;-><init>(Lmokee/externalviews/KeyguardExternalView;)V

    invoke-virtual {p0, v0}, Lmokee/externalviews/KeyguardExternalView;->performAction(Ljava/lang/Runnable;)V

    .line 268
    return-void
.end method

.method public onBouncerShowing(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 344
    new-instance v0, Lmokee/externalviews/KeyguardExternalView$8;

    invoke-direct {v0, p0, p1}, Lmokee/externalviews/KeyguardExternalView$8;-><init>(Lmokee/externalviews/KeyguardExternalView;Z)V

    invoke-virtual {p0, v0}, Lmokee/externalviews/KeyguardExternalView;->performAction(Ljava/lang/Runnable;)V

    .line 343
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 255
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 256
    new-instance v0, Lmokee/externalviews/KeyguardExternalView$4;

    invoke-direct {v0, p0}, Lmokee/externalviews/KeyguardExternalView$4;-><init>(Lmokee/externalviews/KeyguardExternalView;)V

    invoke-virtual {p0, v0}, Lmokee/externalviews/KeyguardExternalView;->performAction(Ljava/lang/Runnable;)V

    .line 254
    return-void
.end method

.method public onKeyguardDismissed()V
    .locals 1

    .prologue
    .line 326
    new-instance v0, Lmokee/externalviews/KeyguardExternalView$7;

    invoke-direct {v0, p0}, Lmokee/externalviews/KeyguardExternalView$7;-><init>(Lmokee/externalviews/KeyguardExternalView;)V

    invoke-virtual {p0, v0}, Lmokee/externalviews/KeyguardExternalView;->performAction(Ljava/lang/Runnable;)V

    .line 325
    return-void
.end method

.method public onKeyguardShowing(Z)V
    .locals 1
    .param p1, "screenOn"    # Z

    .prologue
    .line 310
    new-instance v0, Lmokee/externalviews/KeyguardExternalView$6;

    invoke-direct {v0, p0, p1}, Lmokee/externalviews/KeyguardExternalView$6;-><init>(Lmokee/externalviews/KeyguardExternalView;Z)V

    invoke-virtual {p0, v0}, Lmokee/externalviews/KeyguardExternalView;->performAction(Ljava/lang/Runnable;)V

    .line 309
    return-void
.end method

.method public onLockscreenSlideOffsetChanged(F)V
    .locals 1
    .param p1, "swipeProgress"    # F

    .prologue
    .line 392
    new-instance v0, Lmokee/externalviews/KeyguardExternalView$11;

    invoke-direct {v0, p0, p1}, Lmokee/externalviews/KeyguardExternalView$11;-><init>(Lmokee/externalviews/KeyguardExternalView;F)V

    invoke-virtual {p0, v0}, Lmokee/externalviews/KeyguardExternalView;->performAction(Ljava/lang/Runnable;)V

    .line 391
    return-void
.end method

.method public onPreDraw()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 228
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalView;->mExternalViewProperties:Lmokee/externalviews/ExternalViewProperties;

    invoke-virtual {v0}, Lmokee/externalviews/ExternalViewProperties;->hasChanged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    return v8

    .line 232
    :cond_0
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalView;->mExternalViewProperties:Lmokee/externalviews/ExternalViewProperties;

    invoke-virtual {v0}, Lmokee/externalviews/ExternalViewProperties;->getX()I

    move-result v2

    .line 233
    .local v2, "x":I
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalView;->mExternalViewProperties:Lmokee/externalviews/ExternalViewProperties;

    invoke-virtual {v0}, Lmokee/externalviews/ExternalViewProperties;->getY()I

    move-result v3

    .line 234
    .local v3, "y":I
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalView;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sub-int v4, v0, v2

    .line 235
    .local v4, "width":I
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalView;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int v5, v0, v3

    .line 236
    .local v5, "height":I
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalView;->mExternalViewProperties:Lmokee/externalviews/ExternalViewProperties;

    invoke-virtual {v0}, Lmokee/externalviews/ExternalViewProperties;->isVisible()Z

    move-result v6

    .line 237
    .local v6, "visible":Z
    new-instance v7, Landroid/graphics/Rect;

    add-int v0, v4, v2

    add-int v1, v5, v3

    invoke-direct {v7, v2, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 238
    .local v7, "clipRect":Landroid/graphics/Rect;
    new-instance v0, Lmokee/externalviews/KeyguardExternalView$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lmokee/externalviews/KeyguardExternalView$3;-><init>(Lmokee/externalviews/KeyguardExternalView;IIIIZLandroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Lmokee/externalviews/KeyguardExternalView;->performAction(Ljava/lang/Runnable;)V

    .line 248
    return v8
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .prologue
    .line 374
    new-instance v0, Lmokee/externalviews/KeyguardExternalView$10;

    invoke-direct {v0, p0}, Lmokee/externalviews/KeyguardExternalView$10;-><init>(Lmokee/externalviews/KeyguardExternalView;)V

    invoke-virtual {p0, v0}, Lmokee/externalviews/KeyguardExternalView;->performAction(Ljava/lang/Runnable;)V

    .line 373
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    .prologue
    .line 359
    new-instance v0, Lmokee/externalviews/KeyguardExternalView$9;

    invoke-direct {v0, p0}, Lmokee/externalviews/KeyguardExternalView$9;-><init>(Lmokee/externalviews/KeyguardExternalView;)V

    invoke-virtual {p0, v0}, Lmokee/externalviews/KeyguardExternalView;->performAction(Ljava/lang/Runnable;)V

    .line 358
    return-void
.end method

.method protected performAction(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 217
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalView;->mExternalViewProvider:Lmokee/externalviews/IKeyguardExternalViewProvider;

    if-eqz v0, :cond_0

    .line 218
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 216
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalView;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public registerKeyguardExternalViewCallback(Lmokee/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;)V
    .locals 0
    .param p1, "callback"    # Lmokee/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;

    .prologue
    .line 427
    iput-object p1, p0, Lmokee/externalviews/KeyguardExternalView;->mCallback:Lmokee/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;

    .line 426
    return-void
.end method

.method public registerOnWindowAttachmentChangedListener(Lmokee/externalviews/KeyguardExternalView$OnWindowAttachmentChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lmokee/externalviews/KeyguardExternalView$OnWindowAttachmentChangedListener;

    .prologue
    .line 452
    iput-object p1, p0, Lmokee/externalviews/KeyguardExternalView;->mWindowAttachmentListener:Lmokee/externalviews/KeyguardExternalView$OnWindowAttachmentChangedListener;

    .line 451
    return-void
.end method

.method public setProviderComponent(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 296
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalView;->mExternalViewProvider:Lmokee/externalviews/IKeyguardExternalViewProvider;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmokee/externalviews/KeyguardExternalView;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 299
    :cond_0
    if-eqz p1, :cond_1

    .line 300
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalView;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 301
    iget-object v2, p0, Lmokee/externalviews/KeyguardExternalView;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    .line 300
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 294
    :cond_1
    return-void
.end method

.method public unregisterKeyguardExternalViewCallback(Lmokee/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;)V
    .locals 2
    .param p1, "callback"    # Lmokee/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;

    .prologue
    .line 436
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalView;->mCallback:Lmokee/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;

    if-eq v0, p1, :cond_0

    .line 437
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Callback not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmokee/externalviews/KeyguardExternalView;->mCallback:Lmokee/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;

    .line 435
    return-void
.end method

.method public unregisterOnWindowAttachmentChangedListener(Lmokee/externalviews/KeyguardExternalView$OnWindowAttachmentChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lmokee/externalviews/KeyguardExternalView$OnWindowAttachmentChangedListener;

    .prologue
    .line 464
    iget-object v0, p0, Lmokee/externalviews/KeyguardExternalView;->mWindowAttachmentListener:Lmokee/externalviews/KeyguardExternalView$OnWindowAttachmentChangedListener;

    if-eq v0, p1, :cond_0

    .line 465
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Callback not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmokee/externalviews/KeyguardExternalView;->mWindowAttachmentListener:Lmokee/externalviews/KeyguardExternalView$OnWindowAttachmentChangedListener;

    .line 463
    return-void
.end method
