.class public final Lmokee/weather/WeatherLocation;
.super Ljava/lang/Object;
.source "WeatherLocation.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmokee/weather/WeatherLocation$1;,
        Lmokee/weather/WeatherLocation$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmokee/weather/WeatherLocation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCity:Ljava/lang/String;

.field private mCityId:Ljava/lang/String;

.field private mCountry:Ljava/lang/String;

.field private mCountryId:Ljava/lang/String;

.field private mKey:Ljava/lang/String;

.field private mPostal:Ljava/lang/String;

.field private mState:Ljava/lang/String;


# direct methods
.method static synthetic -set0(Lmokee/weather/WeatherLocation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lmokee/weather/WeatherLocation;->mCity:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lmokee/weather/WeatherLocation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lmokee/weather/WeatherLocation;->mCityId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lmokee/weather/WeatherLocation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lmokee/weather/WeatherLocation;->mCountry:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Lmokee/weather/WeatherLocation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lmokee/weather/WeatherLocation;->mCountryId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Lmokee/weather/WeatherLocation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lmokee/weather/WeatherLocation;->mKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set5(Lmokee/weather/WeatherLocation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lmokee/weather/WeatherLocation;->mPostal:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set6(Lmokee/weather/WeatherLocation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lmokee/weather/WeatherLocation;->mState:Ljava/lang/String;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 210
    new-instance v0, Lmokee/weather/WeatherLocation$1;

    invoke-direct {v0}, Lmokee/weather/WeatherLocation$1;-><init>()V

    sput-object v0, Lmokee/weather/WeatherLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 36
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    invoke-static {p1}, Lmokee/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lmokee/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 194
    .local v0, "parcelInfo":Lmokee/os/Concierge$ParcelInfo;
    invoke-virtual {v0}, Lmokee/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v1

    .line 196
    .local v1, "parcelableVersion":I
    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmokee/weather/WeatherLocation;->mKey:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmokee/weather/WeatherLocation;->mCityId:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmokee/weather/WeatherLocation;->mCity:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmokee/weather/WeatherLocation;->mState:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmokee/weather/WeatherLocation;->mPostal:Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmokee/weather/WeatherLocation;->mCountryId:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmokee/weather/WeatherLocation;->mCountry:Ljava/lang/String;

    .line 207
    :cond_0
    invoke-virtual {v0}, Lmokee/os/Concierge$ParcelInfo;->complete()V

    .line 191
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmokee/weather/WeatherLocation;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lmokee/weather/WeatherLocation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Lmokee/weather/WeatherLocation;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lmokee/weather/WeatherLocation;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 267
    if-nez p1, :cond_0

    return v3

    .line 269
    :cond_0
    invoke-virtual {p0}, Lmokee/weather/WeatherLocation;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_1

    move-object v0, p1

    .line 270
    check-cast v0, Lmokee/weather/WeatherLocation;

    .line 271
    .local v0, "location":Lmokee/weather/WeatherLocation;
    iget-object v1, p0, Lmokee/weather/WeatherLocation;->mKey:Ljava/lang/String;

    iget-object v2, v0, Lmokee/weather/WeatherLocation;->mKey:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1

    .line 273
    .end local v0    # "location":Lmokee/weather/WeatherLocation;
    :cond_1
    return v3
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lmokee/weather/WeatherLocation;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public getCityId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lmokee/weather/WeatherLocation;->mCityId:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lmokee/weather/WeatherLocation;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lmokee/weather/WeatherLocation;->mCountryId:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lmokee/weather/WeatherLocation;->mPostal:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lmokee/weather/WeatherLocation;->mState:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 259
    const/16 v0, 0x1f

    .line 261
    .local v0, "prime":I
    iget-object v2, p0, Lmokee/weather/WeatherLocation;->mKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmokee/weather/WeatherLocation;->mKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 262
    .local v1, "result":I
    return v1

    .line 261
    .end local v1    # "result":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    const-string/jumbo v1, "{ City ID: "

    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lmokee/weather/WeatherLocation;->mCityId:Ljava/lang/String;

    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 249
    const-string/jumbo v1, " City: "

    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lmokee/weather/WeatherLocation;->mCity:Ljava/lang/String;

    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 250
    const-string/jumbo v1, " State: "

    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lmokee/weather/WeatherLocation;->mState:Ljava/lang/String;

    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 251
    const-string/jumbo v1, " Postal/ZIP Code: "

    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lmokee/weather/WeatherLocation;->mPostal:Ljava/lang/String;

    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 252
    const-string/jumbo v1, " Country Id: "

    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lmokee/weather/WeatherLocation;->mCountryId:Ljava/lang/String;

    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 253
    const-string/jumbo v1, " Country: "

    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 253
    iget-object v1, p0, Lmokee/weather/WeatherLocation;->mCountry:Ljava/lang/String;

    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 253
    const-string/jumbo v1, "}"

    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 230
    invoke-static {p1}, Lmokee/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lmokee/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 233
    .local v0, "parcelInfo":Lmokee/os/Concierge$ParcelInfo;
    iget-object v1, p0, Lmokee/weather/WeatherLocation;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lmokee/weather/WeatherLocation;->mCityId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lmokee/weather/WeatherLocation;->mCity:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lmokee/weather/WeatherLocation;->mState:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lmokee/weather/WeatherLocation;->mPostal:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Lmokee/weather/WeatherLocation;->mCountryId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lmokee/weather/WeatherLocation;->mCountry:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v0}, Lmokee/os/Concierge$ParcelInfo;->complete()V

    .line 228
    return-void
.end method
