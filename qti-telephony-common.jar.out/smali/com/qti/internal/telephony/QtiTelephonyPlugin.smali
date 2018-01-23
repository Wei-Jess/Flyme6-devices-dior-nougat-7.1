.class public Lcom/qti/internal/telephony/QtiTelephonyPlugin;
.super Lcom/android/internal/telephony/TelephonyPluginBase;
.source "QtiTelephonyPlugin.java"

# interfaces
.implements Lcom/android/internal/telephony/TelephonyPluginInterface;


# instance fields
.field private TAG:Ljava/lang/String;

.field mQtiRadioCapabilityController:Lcom/qti/internal/telephony/QtiRadioCapabilityController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyPluginBase;-><init>()V

    .line 32
    const-string v0, "QtiTelephonyPlugin"

    iput-object v0, p0, Lcom/qti/internal/telephony/QtiTelephonyPlugin;->TAG:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qti/internal/telephony/QtiTelephonyPlugin;->mQtiRadioCapabilityController:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    return-void
.end method


# virtual methods
.method public initExtTelephonyClasses(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneProxy"    # [Lcom/android/internal/telephony/Phone;
    .param p3, "commandsInterfaces"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/qti/internal/telephony/QtiTelephonyPlugin;->TAG:Ljava/lang/String;

    const-string v1, " Init ExtTelephonyServiceImpl "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {p1}, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->init(Landroid/content/Context;)Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;

    .line 77
    invoke-static {p1, p2, p3}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->make(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v0

    iput-object v0, p0, Lcom/qti/internal/telephony/QtiTelephonyPlugin;->mQtiRadioCapabilityController:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    .line 79
    return-void
.end method

.method public initSubscriptionController(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "commandsInterfaces"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 50
    invoke-static {p1, p2}, Lcom/qti/internal/telephony/QtiSubscriptionController;->init(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/qti/internal/telephony/QtiSubscriptionController;

    .line 51
    return-void
.end method

.method public makeCDMALTEPhone(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "phoneId"    # I

    .prologue
    .line 68
    new-instance v0, Lcom/qti/internal/telephony/cdma/QtiCDMALTEPhone;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/qti/internal/telephony/cdma/QtiCDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    return-object v0
.end method

.method public makeDcTracker(Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/dataconnection/DcTracker;
    .locals 1
    .param p1, "p"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 83
    new-instance v0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;

    invoke-direct {v0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    return-object v0
.end method

.method public makeDctController([Lcom/android/internal/telephony/PhoneProxy;)Lcom/android/internal/telephony/dataconnection/DctController;
    .locals 1
    .param p1, "phones"    # [Lcom/android/internal/telephony/PhoneProxy;

    .prologue
    .line 44
    invoke-static {p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->makeDctController([Lcom/android/internal/telephony/PhoneProxy;)Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v0

    return-object v0
.end method

.method public makeDefaultPhones(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/android/internal/telephony/TelephonyPluginBase;->makeDefaultPhones(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public makeGSMPhone(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "phoneId"    # I

    .prologue
    .line 62
    new-instance v0, Lcom/qti/internal/telephony/gsm/QtiGSMPhone;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/qti/internal/telephony/gsm/QtiGSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    return-object v0
.end method

.method public makeSubscriptionInfoUpdater(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionInfoUpdater;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneProxy"    # [Lcom/android/internal/telephony/Phone;
    .param p3, "commandsInterfaces"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 56
    invoke-static {p1, p2, p3}, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;->init(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    move-result-object v0

    return-object v0
.end method
