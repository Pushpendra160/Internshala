class Location {
  final String name;
  final String link;
  final String country;
  final String? region;
  final String locationName;

  Location({
    required this.name,
    required this.link,
    required this.country,
    this.region,
    required this.locationName,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      name: json['string'],
      link: json['link'],
      country: json['country'],
      region: json['region'],
      locationName: json['locationName'],
    );
  }
}


class Internship {
  final int id;
  final String title;
  final String employmentType;
  final bool workFromHome;
  final String companyName;
  final String companyUrl;
  final bool isPremium;
  final bool isPremiumInternship;
  final String employerName;
  final String companyLogo;
  final String type;
  final String url;
  final int isInternChallenge;
  final bool isExternal;
  final bool isActive;
  final String expiresAt;
  final String closedAt;
  final String profileName;
  final bool partTime;
  final String startDate;
  final String duration;
  final String stipend;
  final String? jobExperience;
  final String experience;
  final String postedOn;
  final int postedOnDateTime;
  final String applicationDeadline;
  final String expiringIn;
  final String postedByLabel;
  final String postedByLabelType;
  final List<String> locationNames;
  final List<Location> locations;

  Internship({
    required this.id,
    required this.title,
    required this.employmentType,
    required this.workFromHome,
    required this.companyName,
    required this.companyUrl,
    required this.isPremium,
    required this.isPremiumInternship,
    required this.employerName,
    required this.companyLogo,
    required this.type,
    required this.url,
    required this.isInternChallenge,
    required this.isExternal,
    required this.isActive,
    required this.expiresAt,
    required this.closedAt,
    required this.profileName,
    required this.partTime,
    required this.startDate,
    required this.duration,
    required this.stipend,
    required this.jobExperience,
    required this.experience,
    required this.postedOn,
    required this.postedOnDateTime,
    required this.applicationDeadline,
    required this.expiringIn,
    required this.postedByLabel,
    required this.postedByLabelType,
    required this.locationNames,
    required this.locations,
  });

  factory Internship.fromJson(Map<String, dynamic> json) {
    // Parse locations list
    List<dynamic> locationsJson = json['locations'] ?? [];
    List<Location> parsedLocations = locationsJson.map((location) => Location.fromJson(location)).toList();

    return Internship(
      id: json['id'],
      title: json['title'],
      employmentType: json['employment_type'],
      workFromHome: json['work_from_home'],
      companyName: json['company_name'],
      companyUrl: json['company_url'],
      isPremium: json['is_premium'],
      isPremiumInternship: json['is_premium_internship'],
      employerName: json['employer_name'],
      companyLogo: json['company_logo'],
      type: json['type'],
      url: json['url'],
      isInternChallenge: json['is_internchallenge'],
      isExternal: json['is_external'],
      isActive: json['is_active'],
      expiresAt: json['expires_at'],
      closedAt: json['closed_at'],
      profileName: json['profile_name'],
      partTime: json['part_time'],
      startDate: json['start_date'],
      duration: json['duration'],
      stipend: json['stipend']['salary'],
      jobExperience: json['job_experience'],
      experience: json['experience'],
      postedOn: json['posted_on'],
      postedOnDateTime: json['postedOnDateTime'],
      applicationDeadline: json['application_deadline'],
      expiringIn: json['expiring_in'],
      postedByLabel: json['posted_by_label'],
      postedByLabelType: json['posted_by_label_type'],
      locationNames: List<String>.from(json['location_names'] ?? []),
      locations: parsedLocations,
    );
  }
}