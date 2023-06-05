BEGIN
	IF NOT EXISTS (SELECT * FROM [Users].[Users] WHERE Id = 'C1FEF7F5-383B-4200-B498-C201A6AC1FEC')
	BEGIN
		INSERT INTO [Users].[Users] ([Id], [Username], [Password], [FirstName], [LastName])
		VALUES ('C1FEF7F5-383B-4200-B498-C201A6AC1FEC', 'piers', 'piers', 'Piers', 'Taylor')
	END
END

BEGIN
	IF NOT EXISTS (SELECT * FROM [Users].[Users] WHERE Id = '9F15FA88-844E-480C-9440-C7290EE31115')
	BEGIN
		INSERT INTO [Users].[Users] ([Id], [Username], [Password], [FirstName], [LastName])
		VALUES ('9F15FA88-844E-480C-9440-C7290EE31115', 'jill', 'jill', 'Jill', 'Man')
	END
END