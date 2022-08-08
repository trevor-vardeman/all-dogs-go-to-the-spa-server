# All Dogs Go to the Spa - Server

This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

## GIF Preview

![gif preview](https://i.imgur.com/f196PZk.gif)

## Introduction
This app is to be used by a dog spa company to create appointments, edit appointments, cancel appointments, look at past appointment history, or look at upcoming appointments.

In order to create an appointment, you  must utilize an **active** dog profile, **active** groomer profile, and a **current service** being offered. You can create these dog profiles, groomer profiles, or services as needed. For each dog/groomer/service, there are both active profiles/services and archived profiles/services. These are purposefully not able to be deleted so as to retain past appointment history even when the dog/groomer/service is no longer active or utilized. You can unarchive these profiles as needed as well.

## Installation Instructions
1. Navigate to the project's [GitHub page](https://github.com/trevor-vardeman/all-dogs-go-to-the-spa-server) and choose your favorite method of downloading the project. I use SSH, so I would click "Code", ensure "SSH" is chosen, and copy the link.
2. Then open your terminal and navigate to a directory in which you'd like to install the app. 
3. Type `git clone` followed by the link you copied from GitHub, and the app should be installed.
4. cd into the project's folder and type the following command in your terminal to install all dependences: `bundle install`.
5. Run the `rake db:reset` command to seed the database. Run this command anytime you want to reset the database to the seed data.
6. Run the `rake server` command to run the application!
7. Utilize and enjoy the app. :)

## Note
This is the server side of this project. There is another server repo for this project that also needs to be downloaded and installed. You can find it [here](https://github.com/trevor-vardeman/all-dogs-go-to-the-spa-client).

## Credits
Thanks to the [Dog API](https://dog.ceo/dog-api/) from Dog CEO for the random dog pics!