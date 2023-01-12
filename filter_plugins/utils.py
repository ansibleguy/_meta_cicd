from datetime import datetime, timedelta


class FilterModule(object):

    def filters(self):
        return {
            "add_time": self.add_time,
        }

    @staticmethod
    def add_time(start: str, add: int) -> str:
        return datetime.strftime(datetime.strptime(start, '%H:%M') + timedelta(seconds=add), '%H:%M')
